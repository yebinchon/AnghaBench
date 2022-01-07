
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {int lun; int id; TYPE_1__* host; } ;
struct TYPE_3__ {int host_no; } ;


 int FCP_TMF_LUN_RESET ;
 int QEDF_ERR (int *,char*,int ,int ,int ) ;
 int qedf_initiate_tmf (struct scsi_cmnd*,int ) ;

__attribute__((used)) static int qedf_eh_device_reset(struct scsi_cmnd *sc_cmd)
{
 QEDF_ERR(((void*)0), "%d:0:%d:%lld: LUN RESET Issued... ",
   sc_cmd->device->host->host_no, sc_cmd->device->id,
   sc_cmd->device->lun);
 return qedf_initiate_tmf(sc_cmd, FCP_TMF_LUN_RESET);
}
