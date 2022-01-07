
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_session {int cancel_waiters; } ;
struct vbg_ioctl_hdr {int size_in; int size_out; } ;
struct vbg_dev {int event_wq; int event_spinlock; } ;


 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static int vbg_ioctl_interrupt_all_wait_events(struct vbg_dev *gdev,
            struct vbg_session *session,
            struct vbg_ioctl_hdr *hdr)
{
 unsigned long flags;

 if (hdr->size_in != sizeof(*hdr) || hdr->size_out != sizeof(*hdr))
  return -EINVAL;

 spin_lock_irqsave(&gdev->event_spinlock, flags);
 session->cancel_waiters = 1;
 spin_unlock_irqrestore(&gdev->event_spinlock, flags);

 wake_up(&gdev->event_wq);

 return 0;
}
