
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_scsi_evt {int dummy; } ;
struct vhost_scsi {int vs_events_nr; } ;


 int kfree (struct vhost_scsi_evt*) ;

__attribute__((used)) static void vhost_scsi_free_evt(struct vhost_scsi *vs, struct vhost_scsi_evt *evt)
{
 vs->vs_events_nr--;
 kfree(evt);
}
