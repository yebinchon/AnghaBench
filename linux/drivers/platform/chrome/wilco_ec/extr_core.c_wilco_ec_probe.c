
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilco_ec_response {int dummy; } ;
struct wilco_ec_device {int data_size; void* debugfs_pdev; void* rtc_pdev; void* telem_pdev; TYPE_1__* io_packet; void* io_command; void* io_data; void* data_buffer; int mailbox_lock; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int start; } ;


 int EC_MAILBOX_DATA_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (void*) ;
 int cros_ec_lpc_mec_destroy () ;
 int cros_ec_lpc_mec_init (int,int) ;
 int dev_err (struct device*,char*,...) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 void* platform_device_register_data (struct device*,char*,int ,struct wilco_ec_device*,int) ;
 int platform_device_unregister (void*) ;
 int platform_set_drvdata (struct platform_device*,struct wilco_ec_device*) ;
 int wilco_ec_add_sysfs (struct wilco_ec_device*) ;
 int wilco_ec_remove_sysfs (struct wilco_ec_device*) ;
 void* wilco_get_resource (struct platform_device*,int) ;

__attribute__((used)) static int wilco_ec_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct wilco_ec_device *ec;
 int ret;

 ec = devm_kzalloc(dev, sizeof(*ec), GFP_KERNEL);
 if (!ec)
  return -ENOMEM;

 platform_set_drvdata(pdev, ec);
 ec->dev = dev;
 mutex_init(&ec->mailbox_lock);

 ec->data_size = sizeof(struct wilco_ec_response) + EC_MAILBOX_DATA_SIZE;
 ec->data_buffer = devm_kzalloc(dev, ec->data_size, GFP_KERNEL);
 if (!ec->data_buffer)
  return -ENOMEM;


 ec->io_data = wilco_get_resource(pdev, 0);
 ec->io_command = wilco_get_resource(pdev, 1);
 ec->io_packet = wilco_get_resource(pdev, 2);
 if (!ec->io_data || !ec->io_command || !ec->io_packet)
  return -ENODEV;


 cros_ec_lpc_mec_init(ec->io_packet->start,
        ec->io_packet->start + EC_MAILBOX_DATA_SIZE);





 ec->debugfs_pdev = platform_device_register_data(dev,
        "wilco-ec-debugfs",
        PLATFORM_DEVID_AUTO,
        ((void*)0), 0);


 ec->rtc_pdev = platform_device_register_data(dev, "rtc-wilco-ec",
           PLATFORM_DEVID_AUTO,
           ((void*)0), 0);
 if (IS_ERR(ec->rtc_pdev)) {
  dev_err(dev, "Failed to create RTC platform device\n");
  ret = PTR_ERR(ec->rtc_pdev);
  goto unregister_debugfs;
 }

 ret = wilco_ec_add_sysfs(ec);
 if (ret < 0) {
  dev_err(dev, "Failed to create sysfs entries: %d", ret);
  goto unregister_rtc;
 }


 ec->telem_pdev = platform_device_register_data(dev, "wilco_telem",
             PLATFORM_DEVID_AUTO,
             ec, sizeof(*ec));
 if (IS_ERR(ec->telem_pdev)) {
  dev_err(dev, "Failed to create telemetry platform device\n");
  ret = PTR_ERR(ec->telem_pdev);
  goto remove_sysfs;
 }

 return 0;

remove_sysfs:
 wilco_ec_remove_sysfs(ec);
unregister_rtc:
 platform_device_unregister(ec->rtc_pdev);
unregister_debugfs:
 if (ec->debugfs_pdev)
  platform_device_unregister(ec->debugfs_pdev);
 cros_ec_lpc_mec_destroy();
 return ret;
}
