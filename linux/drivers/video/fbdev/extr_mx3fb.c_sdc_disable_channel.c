
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mx3fb_info {int cookie; TYPE_1__* txd; struct mx3fb_data* mx3fb; } ;
struct mx3fb_data {int lock; } ;
struct TYPE_2__ {int chan; } ;


 int EINVAL ;
 int dmaengine_terminate_all (int ) ;
 int sdc_fb_uninit (struct mx3fb_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdc_disable_channel(struct mx3fb_info *mx3_fbi)
{
 struct mx3fb_data *mx3fb = mx3_fbi->mx3fb;
 uint32_t enabled;
 unsigned long flags;

 if (mx3_fbi->txd == ((void*)0))
  return;

 spin_lock_irqsave(&mx3fb->lock, flags);

 enabled = sdc_fb_uninit(mx3_fbi);

 spin_unlock_irqrestore(&mx3fb->lock, flags);

 dmaengine_terminate_all(mx3_fbi->txd->chan);
 mx3_fbi->txd = ((void*)0);
 mx3_fbi->cookie = -EINVAL;
}
