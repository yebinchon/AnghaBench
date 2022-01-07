
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vhost_scsi_tpg {int tport_tpgt; } ;
struct TYPE_2__ {int* lun; } ;
struct vhost_scsi_evt {int list; TYPE_1__ event; } ;
struct vhost_scsi {int vs_event_work; int dev; int vs_event_list; } ;
struct se_lun {int unpacked_lun; } ;


 int llist_add (int *,int *) ;
 struct vhost_scsi_evt* vhost_scsi_allocate_evt (struct vhost_scsi*,int ,int ) ;
 int vhost_work_queue (int *,int *) ;

__attribute__((used)) static void
vhost_scsi_send_evt(struct vhost_scsi *vs,
     struct vhost_scsi_tpg *tpg,
     struct se_lun *lun,
     u32 event,
     u32 reason)
{
 struct vhost_scsi_evt *evt;

 evt = vhost_scsi_allocate_evt(vs, event, reason);
 if (!evt)
  return;

 if (tpg && lun) {





  evt->event.lun[0] = 0x01;
  evt->event.lun[1] = tpg->tport_tpgt;
  if (lun->unpacked_lun >= 256)
   evt->event.lun[2] = lun->unpacked_lun >> 8 | 0x40 ;
  evt->event.lun[3] = lun->unpacked_lun & 0xFF;
 }

 llist_add(&evt->list, &vs->vs_event_list);
 vhost_work_queue(&vs->dev, &vs->vs_event_work);
}
