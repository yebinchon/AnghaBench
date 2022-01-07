
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int SCSI_MLQUEUE_HOST_BUSY ;

__attribute__((used)) static int
lpfc_no_command(struct Scsi_Host *shost, struct scsi_cmnd *cmnd)
{
 return SCSI_MLQUEUE_HOST_BUSY;
}
