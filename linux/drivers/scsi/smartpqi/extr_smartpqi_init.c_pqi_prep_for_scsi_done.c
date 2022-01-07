
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct pqi_scsi_dev {int scsi_cmds_outstanding; } ;
struct TYPE_2__ {struct pqi_scsi_dev* hostdata; } ;


 int DID_NO_CONNECT ;
 int atomic_dec (int *) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;

void pqi_prep_for_scsi_done(struct scsi_cmnd *scmd)
{
 struct pqi_scsi_dev *device;

 if (!scmd->device) {
  set_host_byte(scmd, DID_NO_CONNECT);
  return;
 }

 device = scmd->device->hostdata;
 if (!device) {
  set_host_byte(scmd, DID_NO_CONNECT);
  return;
 }

 atomic_dec(&device->scsi_cmds_outstanding);
}
