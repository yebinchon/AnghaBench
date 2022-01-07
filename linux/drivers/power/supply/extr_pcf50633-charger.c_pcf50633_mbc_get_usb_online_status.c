
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_mbc {int usb_online; } ;
struct pcf50633 {int mbc_pdev; } ;


 struct pcf50633_mbc* platform_get_drvdata (int ) ;

int pcf50633_mbc_get_usb_online_status(struct pcf50633 *pcf)
{
 struct pcf50633_mbc *mbc = platform_get_drvdata(pcf->mbc_pdev);

 if (!mbc)
  return 0;

 return mbc->usb_online;
}
