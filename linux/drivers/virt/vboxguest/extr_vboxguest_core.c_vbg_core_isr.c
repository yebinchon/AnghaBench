
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int rc; } ;
struct vmmdev_events {int events; TYPE_4__ header; } ;
struct TYPE_10__ {int work; } ;
struct vbg_dev {int pending_events; int event_wq; int event_spinlock; TYPE_5__ mem_balloon; int hgcm_wq; TYPE_3__* mmio; struct vmmdev_events* ack_events_req; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int have_events; } ;
struct TYPE_7__ {TYPE_1__ V1_04; } ;
struct TYPE_8__ {TYPE_2__ V; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VERR_INTERNAL_ERROR ;
 int VMMDEV_EVENT_BALLOON_CHANGE_REQUEST ;
 int VMMDEV_EVENT_HGCM ;
 int VMMDEV_EVENT_MOUSE_POSITION_CHANGED ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vbg_err (char*,int) ;
 int vbg_linux_mouse_event (struct vbg_dev*) ;
 int vbg_req_perform (struct vbg_dev*,struct vmmdev_events*) ;
 int wake_up (int *) ;

irqreturn_t vbg_core_isr(int irq, void *dev_id)
{
 struct vbg_dev *gdev = dev_id;
 struct vmmdev_events *req = gdev->ack_events_req;
 bool mouse_position_changed = 0;
 unsigned long flags;
 u32 events = 0;
 int rc;

 if (!gdev->mmio->V.V1_04.have_events)
  return IRQ_NONE;


 req->header.rc = VERR_INTERNAL_ERROR;
 req->events = 0;
 rc = vbg_req_perform(gdev, req);
 if (rc < 0) {
  vbg_err("Error performing events req, rc: %d\n", rc);
  return IRQ_NONE;
 }

 events = req->events;

 if (events & VMMDEV_EVENT_MOUSE_POSITION_CHANGED) {
  mouse_position_changed = 1;
  events &= ~VMMDEV_EVENT_MOUSE_POSITION_CHANGED;
 }

 if (events & VMMDEV_EVENT_HGCM) {
  wake_up(&gdev->hgcm_wq);
  events &= ~VMMDEV_EVENT_HGCM;
 }

 if (events & VMMDEV_EVENT_BALLOON_CHANGE_REQUEST) {
  schedule_work(&gdev->mem_balloon.work);
  events &= ~VMMDEV_EVENT_BALLOON_CHANGE_REQUEST;
 }

 if (events) {
  spin_lock_irqsave(&gdev->event_spinlock, flags);
  gdev->pending_events |= events;
  spin_unlock_irqrestore(&gdev->event_spinlock, flags);

  wake_up(&gdev->event_wq);
 }

 if (mouse_position_changed)
  vbg_linux_mouse_event(gdev);

 return IRQ_HANDLED;
}
