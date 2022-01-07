
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcx_par {int lock; } ;
struct fb_info {scalar_t__ par; } ;


 int __tcx_set_control_plane (struct fb_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tcx_reset(struct fb_info *info)
{
 struct tcx_par *par = (struct tcx_par *) info->par;
 unsigned long flags;

 spin_lock_irqsave(&par->lock, flags);
 __tcx_set_control_plane(info);
 spin_unlock_irqrestore(&par->lock, flags);
}
