
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int screen_base; struct e3d_info* par; } ;
struct fb_fillrect {int dummy; } ;
struct e3d_info {int lock; scalar_t__ fb8_buf_diff; } ;


 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void e3d_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct e3d_info *ep = info->par;
 unsigned long flags;

 spin_lock_irqsave(&ep->lock, flags);
 cfb_fillrect(info, rect);
 info->screen_base += ep->fb8_buf_diff;
 cfb_fillrect(info, rect);
 info->screen_base -= ep->fb8_buf_diff;
 spin_unlock_irqrestore(&ep->lock, flags);
}
