
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct da8xx_fb_par* par; } ;
struct da8xx_fb_par {scalar_t__ vsync_flag; int vsync_timeout; int vsync_wait; } ;


 int ETIMEDOUT ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int fb_wait_for_vsync(struct fb_info *info)
{
 struct da8xx_fb_par *par = info->par;
 int ret;
 par->vsync_flag = 0;
 ret = wait_event_interruptible_timeout(par->vsync_wait,
            par->vsync_flag != 0,
            par->vsync_timeout);
 if (ret < 0)
  return ret;
 if (ret == 0)
  return -ETIMEDOUT;

 return 0;
}
