
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_info {int y1; int y2; int x1; int x2; int dirty_lock; int update_wanted; } ;


 int INT_MAX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xenfb_do_update (struct xenfb_info*,int,int,int,int) ;
 int xenfb_handle_resize_dpy (struct xenfb_info*) ;
 scalar_t__ xenfb_queue_full (struct xenfb_info*) ;

__attribute__((used)) static void xenfb_refresh(struct xenfb_info *info,
     int x1, int y1, int w, int h)
{
 unsigned long flags;
 int x2 = x1 + w - 1;
 int y2 = y1 + h - 1;

 xenfb_handle_resize_dpy(info);

 if (!info->update_wanted)
  return;

 spin_lock_irqsave(&info->dirty_lock, flags);


 if (info->y1 < y1)
  y1 = info->y1;
 if (info->y2 > y2)
  y2 = info->y2;
 if (info->x1 < x1)
  x1 = info->x1;
 if (info->x2 > x2)
  x2 = info->x2;

 if (xenfb_queue_full(info)) {

  info->x1 = x1;
  info->x2 = x2;
  info->y1 = y1;
  info->y2 = y2;
  spin_unlock_irqrestore(&info->dirty_lock, flags);
  return;
 }


 info->x1 = info->y1 = INT_MAX;
 info->x2 = info->y2 = 0;

 spin_unlock_irqrestore(&info->dirty_lock, flags);

 if (x1 <= x2 && y1 <= y2)
  xenfb_do_update(info, x1, y1, x2 - x1 + 1, y2 - y1 + 1);
}
