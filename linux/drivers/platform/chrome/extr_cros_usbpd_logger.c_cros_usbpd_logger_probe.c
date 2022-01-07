
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct logger_data {int log_work; int log_workqueue; struct cros_ec_dev* ec_dev; struct device* dev; } ;
struct cros_ec_dev {int dummy; } ;


 int CROS_USBPD_LOG_UPDATE_DELAY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int cros_usbpd_log_check ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;
 struct logger_data* devm_kzalloc (struct device*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct logger_data*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static int cros_usbpd_logger_probe(struct platform_device *pd)
{
 struct cros_ec_dev *ec_dev = dev_get_drvdata(pd->dev.parent);
 struct device *dev = &pd->dev;
 struct logger_data *logger;

 logger = devm_kzalloc(dev, sizeof(*logger), GFP_KERNEL);
 if (!logger)
  return -ENOMEM;

 logger->dev = dev;
 logger->ec_dev = ec_dev;

 platform_set_drvdata(pd, logger);


 INIT_DELAYED_WORK(&logger->log_work, cros_usbpd_log_check);
 logger->log_workqueue = create_singlethread_workqueue("cros_usbpd_log");
 if (!logger->log_workqueue)
  return -ENOMEM;

 queue_delayed_work(logger->log_workqueue, &logger->log_work,
      CROS_USBPD_LOG_UPDATE_DELAY);

 return 0;
}
