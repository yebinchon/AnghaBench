
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int lockup; } ;
struct fb_info {scalar_t__ state; struct nvidia_par* par; } ;


 scalar_t__ FBINFO_STATE_RUNNING ;
 int NVFlush (struct fb_info*) ;
 int NVSync (struct fb_info*) ;

int nvidiafb_sync(struct fb_info *info)
{
 struct nvidia_par *par = info->par;

 if (info->state != FBINFO_STATE_RUNNING)
  return 0;

 if (!par->lockup)
  NVFlush(info);

 if (!par->lockup)
  NVSync(info);

 return 0;
}
