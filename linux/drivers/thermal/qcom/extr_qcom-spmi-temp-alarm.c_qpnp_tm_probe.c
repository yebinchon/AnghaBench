
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct qpnp_tm_chip {int * tz_dev; scalar_t__ subtype; int base; int * adc; int map; int lock; TYPE_1__* dev; } ;
struct TYPE_7__ {int parent; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int QPNP_TM_REG_SUBTYPE ;
 int QPNP_TM_REG_TYPE ;
 scalar_t__ QPNP_TM_SUBTYPE_GEN1 ;
 scalar_t__ QPNP_TM_SUBTYPE_GEN2 ;
 scalar_t__ QPNP_TM_TYPE ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 int dev_set_drvdata (TYPE_1__*,struct qpnp_tm_chip*) ;
 int * devm_iio_channel_get (TYPE_1__*,char*) ;
 struct qpnp_tm_chip* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,int ,struct qpnp_tm_chip*) ;
 int * devm_thermal_zone_of_sensor_register (TYPE_1__*,int ,struct qpnp_tm_chip*,int *) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int qpnp_tm_init (struct qpnp_tm_chip*) ;
 int qpnp_tm_isr ;
 int qpnp_tm_read (struct qpnp_tm_chip*,int ,scalar_t__*) ;
 int qpnp_tm_sensor_ops ;
 int thermal_zone_device_update (int *,int ) ;

__attribute__((used)) static int qpnp_tm_probe(struct platform_device *pdev)
{
 struct qpnp_tm_chip *chip;
 struct device_node *node;
 u8 type, subtype;
 u32 res;
 int ret, irq;

 node = pdev->dev.of_node;

 chip = devm_kzalloc(&pdev->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 dev_set_drvdata(&pdev->dev, chip);
 chip->dev = &pdev->dev;

 mutex_init(&chip->lock);

 chip->map = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!chip->map)
  return -ENXIO;

 ret = of_property_read_u32(node, "reg", &res);
 if (ret < 0)
  return ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;


 chip->adc = devm_iio_channel_get(&pdev->dev, "thermal");
 if (IS_ERR(chip->adc)) {
  ret = PTR_ERR(chip->adc);
  chip->adc = ((void*)0);
  if (ret == -EPROBE_DEFER)
   return ret;
 }

 chip->base = res;

 ret = qpnp_tm_read(chip, QPNP_TM_REG_TYPE, &type);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not read type\n");
  return ret;
 }

 ret = qpnp_tm_read(chip, QPNP_TM_REG_SUBTYPE, &subtype);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not read subtype\n");
  return ret;
 }

 if (type != QPNP_TM_TYPE || (subtype != QPNP_TM_SUBTYPE_GEN1
         && subtype != QPNP_TM_SUBTYPE_GEN2)) {
  dev_err(&pdev->dev, "invalid type 0x%02x or subtype 0x%02x\n",
   type, subtype);
  return -ENODEV;
 }

 chip->subtype = subtype;






 chip->tz_dev = devm_thermal_zone_of_sensor_register(
  &pdev->dev, 0, chip, &qpnp_tm_sensor_ops);
 if (IS_ERR(chip->tz_dev)) {
  dev_err(&pdev->dev, "failed to register sensor\n");
  return PTR_ERR(chip->tz_dev);
 }

 ret = qpnp_tm_init(chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "init failed\n");
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0), qpnp_tm_isr,
     IRQF_ONESHOT, node->name, chip);
 if (ret < 0)
  return ret;

 thermal_zone_device_update(chip->tz_dev, THERMAL_EVENT_UNSPECIFIED);

 return 0;
}
