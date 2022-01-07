
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {unsigned long count; int wait; } ;
struct s3c_fb {int dev; TYPE_1__ vsync_info; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int VSYNC_TIMEOUT_MSEC ;
 int msecs_to_jiffies (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int s3c_fb_enable_irq (struct s3c_fb*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int s3c_fb_wait_for_vsync(struct s3c_fb *sfb, u32 crtc)
{
 unsigned long count;
 int ret;

 if (crtc != 0)
  return -ENODEV;

 pm_runtime_get_sync(sfb->dev);

 count = sfb->vsync_info.count;
 s3c_fb_enable_irq(sfb);
 ret = wait_event_interruptible_timeout(sfb->vsync_info.wait,
           count != sfb->vsync_info.count,
           msecs_to_jiffies(VSYNC_TIMEOUT_MSEC));

 pm_runtime_put_sync(sfb->dev);

 if (ret == 0)
  return -ETIMEDOUT;

 return 0;
}
