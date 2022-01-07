
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_scsi_inflight {int kref; } ;


 int kref_put (int *,int ) ;
 int vhost_scsi_done_inflight ;

__attribute__((used)) static void vhost_scsi_put_inflight(struct vhost_scsi_inflight *inflight)
{
 kref_put(&inflight->kref, vhost_scsi_done_inflight);
}
