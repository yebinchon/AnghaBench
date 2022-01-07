
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vhost_virtqueue {int dummy; } ;
struct TYPE_3__ {void* reason; void* event; } ;
struct vhost_scsi_evt {TYPE_1__ event; } ;
struct vhost_scsi {scalar_t__ vs_events_nr; int vs_events_missed; TYPE_2__* vqs; } ;
struct TYPE_4__ {struct vhost_virtqueue vq; } ;


 int GFP_KERNEL ;
 scalar_t__ VHOST_SCSI_MAX_EVENT ;
 size_t VHOST_SCSI_VQ_EVT ;
 void* cpu_to_vhost32 (struct vhost_virtqueue*,int ) ;
 struct vhost_scsi_evt* kzalloc (int,int ) ;
 int vq_err (struct vhost_virtqueue*,char*) ;

__attribute__((used)) static struct vhost_scsi_evt *
vhost_scsi_allocate_evt(struct vhost_scsi *vs,
         u32 event, u32 reason)
{
 struct vhost_virtqueue *vq = &vs->vqs[VHOST_SCSI_VQ_EVT].vq;
 struct vhost_scsi_evt *evt;

 if (vs->vs_events_nr > VHOST_SCSI_MAX_EVENT) {
  vs->vs_events_missed = 1;
  return ((void*)0);
 }

 evt = kzalloc(sizeof(*evt), GFP_KERNEL);
 if (!evt) {
  vq_err(vq, "Failed to allocate vhost_scsi_evt\n");
  vs->vs_events_missed = 1;
  return ((void*)0);
 }

 evt->event.event = cpu_to_vhost32(vq, event);
 evt->event.reason = cpu_to_vhost32(vq, reason);
 vs->vs_events_nr++;

 return evt;
}
