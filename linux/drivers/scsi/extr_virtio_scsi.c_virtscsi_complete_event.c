
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_event_node {int work; } ;
struct virtio_scsi {int stop_events; } ;


 int queue_work (int ,int *) ;
 int system_freezable_wq ;

__attribute__((used)) static void virtscsi_complete_event(struct virtio_scsi *vscsi, void *buf)
{
 struct virtio_scsi_event_node *event_node = buf;

 if (!vscsi->stop_events)
  queue_work(system_freezable_wq, &event_node->work);
}
