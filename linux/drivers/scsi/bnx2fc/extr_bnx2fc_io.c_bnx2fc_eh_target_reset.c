
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int FCP_TMF_TGT_RESET ;
 int bnx2fc_initiate_tmf (struct scsi_cmnd*,int ) ;

int bnx2fc_eh_target_reset(struct scsi_cmnd *sc_cmd)
{
 return bnx2fc_initiate_tmf(sc_cmd, FCP_TMF_TGT_RESET);
}
