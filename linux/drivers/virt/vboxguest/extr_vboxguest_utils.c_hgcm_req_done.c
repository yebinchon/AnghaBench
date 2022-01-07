
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmdev_hgcmreq_header {int flags; } ;
struct vbg_dev {int event_spinlock; } ;


 int VMMDEV_HGCM_REQ_DONE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool hgcm_req_done(struct vbg_dev *gdev,
     struct vmmdev_hgcmreq_header *header)
{
 unsigned long flags;
 bool done;

 spin_lock_irqsave(&gdev->event_spinlock, flags);
 done = header->flags & VMMDEV_HGCM_REQ_DONE;
 spin_unlock_irqrestore(&gdev->event_spinlock, flags);

 return done;
}
