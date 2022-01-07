
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbg_session {scalar_t__ cancel_waiters; } ;
struct vbg_dev {int pending_events; int event_spinlock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool vbg_wait_event_cond(struct vbg_dev *gdev,
    struct vbg_session *session,
    u32 event_mask)
{
 unsigned long flags;
 bool wakeup;
 u32 events;

 spin_lock_irqsave(&gdev->event_spinlock, flags);

 events = gdev->pending_events & event_mask;
 wakeup = events || session->cancel_waiters;

 spin_unlock_irqrestore(&gdev->event_spinlock, flags);

 return wakeup;
}
