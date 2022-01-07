
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_cmd {scalar_t__ comp; } ;
struct virtio_scsi {int dummy; } ;


 int complete (scalar_t__) ;

__attribute__((used)) static void virtscsi_complete_free(struct virtio_scsi *vscsi, void *buf)
{
 struct virtio_scsi_cmd *cmd = buf;

 if (cmd->comp)
  complete(cmd->comp);
}
