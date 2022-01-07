
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_hcd_info {int (* enable_oc ) (struct s3c2410_hcd_info*,int ) ;int * hcd; int * report_oc; } ;
struct platform_device {int dev; } ;


 int clk ;
 int clk_disable_unprepare (int ) ;
 int dev_dbg (int *,char*) ;
 struct s3c2410_hcd_info* dev_get_platdata (int *) ;
 int stub1 (struct s3c2410_hcd_info*,int ) ;
 int usb_clk ;

__attribute__((used)) static void s3c2410_stop_hc(struct platform_device *dev)
{
 struct s3c2410_hcd_info *info = dev_get_platdata(&dev->dev);

 dev_dbg(&dev->dev, "s3c2410_stop_hc:\n");

 if (info != ((void*)0)) {
  info->report_oc = ((void*)0);
  info->hcd = ((void*)0);

  if (info->enable_oc != ((void*)0))
   (info->enable_oc)(info, 0);
 }

 clk_disable_unprepare(clk);
 clk_disable_unprepare(usb_clk);
}
