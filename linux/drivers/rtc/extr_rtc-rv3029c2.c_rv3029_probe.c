
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rv3029_data {int irq; int rtc; struct device* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int alarm_irq_enable; int set_alarm; int read_alarm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct rv3029_data*) ;
 int dev_warn (struct device*,char*) ;
 struct rv3029_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,char*,struct device*) ;
 int devm_rtc_device_register (struct device*,char const*,TYPE_1__*,int ) ;
 int rv3029_alarm_irq_enable ;
 int rv3029_get_sr (struct device*,int *) ;
 int rv3029_handle_irq ;
 int rv3029_hwmon_register (struct device*,char const*) ;
 int rv3029_read_alarm ;
 TYPE_1__ rv3029_rtc_ops ;
 int rv3029_set_alarm ;
 int rv3029_trickle_config (struct device*) ;

__attribute__((used)) static int rv3029_probe(struct device *dev, struct regmap *regmap, int irq,
   const char *name)
{
 struct rv3029_data *rv3029;
 int rc = 0;
 u8 buf[1];

 rv3029 = devm_kzalloc(dev, sizeof(*rv3029), GFP_KERNEL);
 if (!rv3029)
  return -ENOMEM;

 rv3029->regmap = regmap;
 rv3029->irq = irq;
 rv3029->dev = dev;
 dev_set_drvdata(dev, rv3029);

 rc = rv3029_get_sr(dev, buf);
 if (rc < 0) {
  dev_err(dev, "reading status failed\n");
  return rc;
 }

 rv3029_trickle_config(dev);
 rv3029_hwmon_register(dev, name);

 rv3029->rtc = devm_rtc_device_register(dev, name, &rv3029_rtc_ops,
            THIS_MODULE);
 if (IS_ERR(rv3029->rtc)) {
  dev_err(dev, "unable to register the class device\n");
  return PTR_ERR(rv3029->rtc);
 }

 if (rv3029->irq > 0) {
  rc = devm_request_threaded_irq(dev, rv3029->irq,
            ((void*)0), rv3029_handle_irq,
            IRQF_TRIGGER_LOW | IRQF_ONESHOT,
            "rv3029", dev);
  if (rc) {
   dev_warn(dev, "unable to request IRQ, alarms disabled\n");
   rv3029->irq = 0;
  } else {
   rv3029_rtc_ops.read_alarm = rv3029_read_alarm;
   rv3029_rtc_ops.set_alarm = rv3029_set_alarm;
   rv3029_rtc_ops.alarm_irq_enable = rv3029_alarm_irq_enable;
  }
 }

 return 0;
}
