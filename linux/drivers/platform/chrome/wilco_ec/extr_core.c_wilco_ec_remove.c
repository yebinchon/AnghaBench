
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilco_ec_device {scalar_t__ debugfs_pdev; scalar_t__ rtc_pdev; scalar_t__ telem_pdev; } ;
struct platform_device {int dummy; } ;


 int cros_ec_lpc_mec_destroy () ;
 int platform_device_unregister (scalar_t__) ;
 struct wilco_ec_device* platform_get_drvdata (struct platform_device*) ;
 int wilco_ec_remove_sysfs (struct wilco_ec_device*) ;

__attribute__((used)) static int wilco_ec_remove(struct platform_device *pdev)
{
 struct wilco_ec_device *ec = platform_get_drvdata(pdev);

 wilco_ec_remove_sysfs(ec);
 platform_device_unregister(ec->telem_pdev);
 platform_device_unregister(ec->rtc_pdev);
 if (ec->debugfs_pdev)
  platform_device_unregister(ec->debugfs_pdev);


 cros_ec_lpc_mec_destroy();

 return 0;
}
