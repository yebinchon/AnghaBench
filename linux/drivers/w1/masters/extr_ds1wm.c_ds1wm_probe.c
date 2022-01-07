
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct resource {int start; int flags; } ;
struct platform_device {int dev; } ;
struct ds1wm_driver_data {int bus_shift; int clock_rate; int reset_recover_delay; scalar_t__ active_high; int is_hw_big_endian; } ;
struct ds1wm_data {int bus_shift; int irq; int is_hw_big_endian; struct platform_device* pdev; int int_en_reg_none; int reset_recover_delay; int cell; int map; } ;
struct TYPE_3__ {void* data; } ;


 int DS1WM_INTEN_IAS ;
 int DS1WM_INT_EN ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_IRQ_HIGHEDGE ;
 int IORESOURCE_IRQ_HIGHLEVEL ;
 int IORESOURCE_IRQ_LOWEDGE ;
 int IORESOURCE_IRQ_LOWLEVEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int IRQ_TYPE_LEVEL_LOW ;
 int dev_dbg (int *,char*,scalar_t__,int ,int ,int,int ) ;
 int dev_err (int *,char*,int,...) ;
 struct ds1wm_driver_data* dev_get_platdata (int *) ;
 int devm_ioremap (int *,int,int) ;
 struct ds1wm_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct ds1wm_data*) ;
 int ds1wm_down (struct ds1wm_data*) ;
 int ds1wm_isr ;
 TYPE_1__ ds1wm_master ;
 int ds1wm_read_register (struct ds1wm_data*,int ) ;
 int ds1wm_up (struct ds1wm_data*) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int ) ;
 int irq_set_irq_type (int,int ) ;
 int mfd_get_cell (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ds1wm_data*) ;
 int resource_size (struct resource*) ;
 int w1_add_master_device (TYPE_1__*) ;

__attribute__((used)) static int ds1wm_probe(struct platform_device *pdev)
{
 struct ds1wm_data *ds1wm_data;
 struct ds1wm_driver_data *plat;
 struct resource *res;
 int ret;
 u8 inten;

 if (!pdev)
  return -ENODEV;

 ds1wm_data = devm_kzalloc(&pdev->dev, sizeof(*ds1wm_data), GFP_KERNEL);
 if (!ds1wm_data)
  return -ENOMEM;

 platform_set_drvdata(pdev, ds1wm_data);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENXIO;
 ds1wm_data->map = devm_ioremap(&pdev->dev, res->start,
           resource_size(res));
 if (!ds1wm_data->map)
  return -ENOMEM;

 ds1wm_data->pdev = pdev;
 ds1wm_data->cell = mfd_get_cell(pdev);
 if (!ds1wm_data->cell)
  return -ENODEV;
 plat = dev_get_platdata(&pdev->dev);
 if (!plat)
  return -ENODEV;


 if (plat->bus_shift > 2) {
  dev_err(&ds1wm_data->pdev->dev,
   "illegal bus shift %d, not written",
   ds1wm_data->bus_shift);
  return -EINVAL;
 }

 ds1wm_data->bus_shift = plat->bus_shift;

 if ((8 << ds1wm_data->bus_shift) > resource_size(res)) {
  dev_err(&ds1wm_data->pdev->dev,
   "memory resource size %d to small, should be %d\n",
   (int)resource_size(res),
   8 << ds1wm_data->bus_shift);
  return -EINVAL;
 }

 ds1wm_data->is_hw_big_endian = plat->is_hw_big_endian;

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res)
  return -ENXIO;
 ds1wm_data->irq = res->start;
 ds1wm_data->int_en_reg_none = (plat->active_high ? DS1WM_INTEN_IAS : 0);
 ds1wm_data->reset_recover_delay = plat->reset_recover_delay;


 inten = ds1wm_read_register(ds1wm_data, DS1WM_INT_EN);
 ds1wm_write_register(ds1wm_data,
  DS1WM_INT_EN, ds1wm_data->int_en_reg_none);

 if (res->flags & IORESOURCE_IRQ_HIGHEDGE)
  irq_set_irq_type(ds1wm_data->irq, IRQ_TYPE_EDGE_RISING);
 if (res->flags & IORESOURCE_IRQ_LOWEDGE)
  irq_set_irq_type(ds1wm_data->irq, IRQ_TYPE_EDGE_FALLING);
 if (res->flags & IORESOURCE_IRQ_HIGHLEVEL)
  irq_set_irq_type(ds1wm_data->irq, IRQ_TYPE_LEVEL_HIGH);
 if (res->flags & IORESOURCE_IRQ_LOWLEVEL)
  irq_set_irq_type(ds1wm_data->irq, IRQ_TYPE_LEVEL_LOW);

 ret = devm_request_irq(&pdev->dev, ds1wm_data->irq, ds1wm_isr,
   IRQF_SHARED, "ds1wm", ds1wm_data);
 if (ret) {
  dev_err(&ds1wm_data->pdev->dev,
   "devm_request_irq %d failed with errno %d\n",
   ds1wm_data->irq,
   ret);

  return ret;
 }

 ds1wm_up(ds1wm_data);

 ds1wm_master.data = (void *)ds1wm_data;

 ret = w1_add_master_device(&ds1wm_master);
 if (ret)
  goto err;

 dev_dbg(&ds1wm_data->pdev->dev,
  "ds1wm: probe successful, IAS: %d, rec.delay: %d, clockrate: %d, bus-shift: %d, is Hw Big Endian: %d\n",
  plat->active_high,
  plat->reset_recover_delay,
  plat->clock_rate,
  ds1wm_data->bus_shift,
  ds1wm_data->is_hw_big_endian);
 return 0;

err:
 ds1wm_down(ds1wm_data);

 return ret;
}
