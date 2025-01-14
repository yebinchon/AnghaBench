
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_get_protocol_info {int dummy; } ;
struct ec_params_hello {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct cros_ec_platform {int dummy; } ;
struct cros_ec_device {int max_request; int max_response; int irq; struct device* dev; void* ec; void* pd; scalar_t__ max_passthru; int lock; void* dout; int dout_size; void* din; int din_size; int event_notifier; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int CONFIG_OF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (void*) ;
 int cros_ec_query_all (struct cros_ec_device*) ;
 int cros_ec_sleep_event (struct cros_ec_device*,int ) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 void* devm_kzalloc (struct device*,int ,int ) ;
 int devm_of_platform_populate (struct device*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,char*,struct cros_ec_device*) ;
 int ec_irq_thread ;
 int ec_p ;
 int mutex_init (int *) ;
 int pd_p ;
 void* platform_device_register_data (struct device*,char*,int ,int *,int) ;
 int platform_device_unregister (void*) ;

int cros_ec_register(struct cros_ec_device *ec_dev)
{
 struct device *dev = ec_dev->dev;
 int err = 0;

 BLOCKING_INIT_NOTIFIER_HEAD(&ec_dev->event_notifier);

 ec_dev->max_request = sizeof(struct ec_params_hello);
 ec_dev->max_response = sizeof(struct ec_response_get_protocol_info);
 ec_dev->max_passthru = 0;

 ec_dev->din = devm_kzalloc(dev, ec_dev->din_size, GFP_KERNEL);
 if (!ec_dev->din)
  return -ENOMEM;

 ec_dev->dout = devm_kzalloc(dev, ec_dev->dout_size, GFP_KERNEL);
 if (!ec_dev->dout)
  return -ENOMEM;

 mutex_init(&ec_dev->lock);

 err = cros_ec_query_all(ec_dev);
 if (err) {
  dev_err(dev, "Cannot identify the EC: error %d\n", err);
  return err;
 }

 if (ec_dev->irq) {
  err = devm_request_threaded_irq(dev, ec_dev->irq, ((void*)0),
    ec_irq_thread, IRQF_TRIGGER_LOW | IRQF_ONESHOT,
    "chromeos-ec", ec_dev);
  if (err) {
   dev_err(dev, "Failed to request IRQ %d: %d",
    ec_dev->irq, err);
   return err;
  }
 }


 ec_dev->ec = platform_device_register_data(ec_dev->dev, "cros-ec-dev",
     PLATFORM_DEVID_AUTO, &ec_p,
     sizeof(struct cros_ec_platform));
 if (IS_ERR(ec_dev->ec)) {
  dev_err(ec_dev->dev,
   "Failed to create CrOS EC platform device\n");
  return PTR_ERR(ec_dev->ec);
 }

 if (ec_dev->max_passthru) {
  ec_dev->pd = platform_device_register_data(ec_dev->dev,
     "cros-ec-dev",
     PLATFORM_DEVID_AUTO, &pd_p,
     sizeof(struct cros_ec_platform));
  if (IS_ERR(ec_dev->pd)) {
   dev_err(ec_dev->dev,
    "Failed to create CrOS PD platform device\n");
   platform_device_unregister(ec_dev->ec);
   return PTR_ERR(ec_dev->pd);
  }
 }

 if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
  err = devm_of_platform_populate(dev);
  if (err) {
   platform_device_unregister(ec_dev->pd);
   platform_device_unregister(ec_dev->ec);
   dev_err(dev, "Failed to register sub-devices\n");
   return err;
  }
 }





 err = cros_ec_sleep_event(ec_dev, 0);
 if (err < 0)
  dev_dbg(ec_dev->dev, "Error %d clearing sleep event to ec",
   err);

 dev_info(dev, "Chrome EC device registered\n");

 return 0;
}
