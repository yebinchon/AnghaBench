
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int device; } ;


 int UGE_COMMAND ;
 int dev_warn (int ,char*) ;
 int readl (int ) ;

__attribute__((used)) static void unifb_sync(struct fb_info *info)
{

 int cnt;

 for (cnt = 0; cnt < 0x10000000; cnt++) {
  if (readl(UGE_COMMAND) & 0x1000000)
   return;
 }

 if (cnt > 0x8000000)
  dev_warn(info->device, "Warning: UniGFX GE time out ...\n");
}
