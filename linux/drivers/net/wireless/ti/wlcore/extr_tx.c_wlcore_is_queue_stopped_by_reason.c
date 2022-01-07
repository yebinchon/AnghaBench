
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int wl_lock; } ;
typedef enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wlcore_is_queue_stopped_by_reason_locked (struct wl1271*,struct wl12xx_vif*,int ,int) ;

bool wlcore_is_queue_stopped_by_reason(struct wl1271 *wl,
           struct wl12xx_vif *wlvif, u8 queue,
           enum wlcore_queue_stop_reason reason)
{
 unsigned long flags;
 bool stopped;

 spin_lock_irqsave(&wl->wl_lock, flags);
 stopped = wlcore_is_queue_stopped_by_reason_locked(wl, wlvif, queue,
          reason);
 spin_unlock_irqrestore(&wl->wl_lock, flags);

 return stopped;
}
