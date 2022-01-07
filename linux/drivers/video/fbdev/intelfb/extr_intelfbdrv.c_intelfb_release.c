
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelfb_info {int open; } ;
struct fb_info {int dummy; } ;


 struct intelfb_info* GET_DINFO (struct fb_info*) ;
 int intelfbhw_disable_irq (struct intelfb_info*) ;
 int msleep (int) ;

__attribute__((used)) static int intelfb_release(struct fb_info *info, int user)
{
 struct intelfb_info *dinfo = GET_DINFO(info);

 if (user) {
  dinfo->open--;
  msleep(1);
  if (!dinfo->open)
   intelfbhw_disable_irq(dinfo);
 }

 return 0;
}
