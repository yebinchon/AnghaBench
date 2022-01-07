
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riva_par {int dummy; } ;
struct fb_info {struct riva_par* par; } ;


 int wait_for_idle (struct riva_par*) ;

__attribute__((used)) static int rivafb_sync(struct fb_info *info)
{
 struct riva_par *par = info->par;

 wait_for_idle(par);
 return 0;
}
