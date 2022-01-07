
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {scalar_t__ vmode; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct fb_info {scalar_t__ par; } ;
struct cg14_par {int lock; } ;


 int EINVAL ;
 int __cg14_reset (struct cg14_par*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cg14_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct cg14_par *par = (struct cg14_par *) info->par;
 unsigned long flags;




 spin_lock_irqsave(&par->lock, flags);
 __cg14_reset(par);
 spin_unlock_irqrestore(&par->lock, flags);

 if (var->xoffset || var->yoffset || var->vmode)
  return -EINVAL;
 return 0;
}
