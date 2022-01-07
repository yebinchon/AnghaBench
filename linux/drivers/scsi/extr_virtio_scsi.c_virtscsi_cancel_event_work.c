
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vq_lock; } ;
struct virtio_scsi {int stop_events; TYPE_2__* event_list; TYPE_1__ event_vq; } ;
struct TYPE_4__ {int work; } ;


 int VIRTIO_SCSI_EVENT_LEN ;
 int cancel_work_sync (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void virtscsi_cancel_event_work(struct virtio_scsi *vscsi)
{
 int i;


 spin_lock_irq(&vscsi->event_vq.vq_lock);
 vscsi->stop_events = 1;
 spin_unlock_irq(&vscsi->event_vq.vq_lock);

 for (i = 0; i < VIRTIO_SCSI_EVENT_LEN; i++)
  cancel_work_sync(&vscsi->event_list[i].work);
}
