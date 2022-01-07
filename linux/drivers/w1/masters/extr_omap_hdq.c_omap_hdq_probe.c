
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct hdq_data {int mode; int hdq_spinlock; int hdq_mutex; scalar_t__ rrw; scalar_t__ hdq_usecount; int hdq_base; struct device* dev; } ;
struct TYPE_3__ {struct hdq_data* data; int triplet; int search; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int OMAP_HDQ_REVISION ;
 int PTR_ERR (int ) ;
 int _omap_hdq_reset (struct hdq_data*) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int,char*) ;
 struct hdq_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct hdq_data*) ;
 int hdq_isr ;
 int hdq_reg_in (struct hdq_data*,int ) ;
 int mutex_init (int *) ;
 int of_property_read_string (int ,char*,char const**) ;
 int omap_hdq_break (struct hdq_data*) ;
 TYPE_1__ omap_w1_master ;
 int omap_w1_search_bus ;
 int omap_w1_triplet ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct hdq_data*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int spin_lock_init (int *) ;
 int strcmp (char const*,char*) ;
 int w1_add_master_device (TYPE_1__*) ;

__attribute__((used)) static int omap_hdq_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct hdq_data *hdq_data;
 int ret, irq;
 u8 rev;
 const char *mode;

 hdq_data = devm_kzalloc(dev, sizeof(*hdq_data), GFP_KERNEL);
 if (!hdq_data) {
  dev_dbg(&pdev->dev, "unable to allocate memory\n");
  return -ENOMEM;
 }

 hdq_data->dev = dev;
 platform_set_drvdata(pdev, hdq_data);

 hdq_data->hdq_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(hdq_data->hdq_base))
  return PTR_ERR(hdq_data->hdq_base);

 hdq_data->hdq_usecount = 0;
 hdq_data->rrw = 0;
 mutex_init(&hdq_data->hdq_mutex);

 pm_runtime_enable(&pdev->dev);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  dev_dbg(&pdev->dev, "pm_runtime_get_sync failed\n");
  goto err_w1;
 }

 ret = _omap_hdq_reset(hdq_data);
 if (ret) {
  dev_dbg(&pdev->dev, "reset failed\n");
  goto err_irq;
 }

 rev = hdq_reg_in(hdq_data, OMAP_HDQ_REVISION);
 dev_info(&pdev->dev, "OMAP HDQ Hardware Rev %c.%c. Driver in %s mode\n",
  (rev >> 4) + '0', (rev & 0x0f) + '0', "Interrupt");

 spin_lock_init(&hdq_data->hdq_spinlock);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_dbg(&pdev->dev, "Failed to get IRQ: %d\n", irq);
  ret = irq;
  goto err_irq;
 }

 ret = devm_request_irq(dev, irq, hdq_isr, 0, "omap_hdq", hdq_data);
 if (ret < 0) {
  dev_dbg(&pdev->dev, "could not request irq\n");
  goto err_irq;
 }

 omap_hdq_break(hdq_data);

 pm_runtime_put_sync(&pdev->dev);

 ret = of_property_read_string(pdev->dev.of_node, "ti,mode", &mode);
 if (ret < 0 || !strcmp(mode, "hdq")) {
  hdq_data->mode = 0;
  omap_w1_master.search = omap_w1_search_bus;
 } else {
  hdq_data->mode = 1;
  omap_w1_master.triplet = omap_w1_triplet;
 }

 omap_w1_master.data = hdq_data;

 ret = w1_add_master_device(&omap_w1_master);
 if (ret) {
  dev_dbg(&pdev->dev, "Failure in registering w1 master\n");
  goto err_w1;
 }

 return 0;

err_irq:
 pm_runtime_put_sync(&pdev->dev);
err_w1:
 pm_runtime_disable(&pdev->dev);

 return ret;
}
