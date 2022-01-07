
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dev; } ;


 int AU1000_SYS_CNTRCTRL ;
 int AU1000_SYS_TOYTRIM ;
 unsigned long CNTR_OK ;
 int ENODEV ;
 int ETIMEDOUT ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int SYS_CNTRL_C0S ;
 int SYS_CNTRL_T0S ;
 int THIS_MODULE ;
 int alchemy_rdsys (int ) ;
 int alchemy_wrsys (int,int ) ;
 int au1xtoy_rtc_ops ;
 int dev_err (int *,char*) ;
 struct rtc_device* devm_rtc_device_register (int *,char*,int *,int ) ;
 int msleep (int) ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;

__attribute__((used)) static int au1xtoy_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtcdev;
 unsigned long t;
 int ret;

 t = alchemy_rdsys(AU1000_SYS_CNTRCTRL);
 if (!(t & CNTR_OK)) {
  dev_err(&pdev->dev, "counters not working; aborting.\n");
  ret = -ENODEV;
  goto out_err;
 }

 ret = -ETIMEDOUT;


 if (alchemy_rdsys(AU1000_SYS_TOYTRIM) != 32767) {

  t = 0x00100000;
  while ((alchemy_rdsys(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_T0S) && --t)
   msleep(1);

  if (!t) {



   dev_err(&pdev->dev, "timeout waiting for access\n");
   goto out_err;
  }


  alchemy_wrsys(32767, AU1000_SYS_TOYTRIM);
 }


 while (alchemy_rdsys(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_C0S)
  msleep(1);

 rtcdev = devm_rtc_device_register(&pdev->dev, "rtc-au1xxx",
         &au1xtoy_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtcdev)) {
  ret = PTR_ERR(rtcdev);
  goto out_err;
 }

 platform_set_drvdata(pdev, rtcdev);

 return 0;

out_err:
 return ret;
}
