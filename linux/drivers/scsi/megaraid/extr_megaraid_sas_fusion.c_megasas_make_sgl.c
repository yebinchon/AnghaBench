
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct megasas_instance {int max_num_sge; } ;
struct megasas_cmd_fusion {scalar_t__ pd_interface; TYPE_1__* io_request; } ;
struct MPI25_IEEE_SGE_CHAIN64 {int dummy; } ;
struct TYPE_2__ {int IoFlags; int SGL; } ;


 int MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH ;
 scalar_t__ NVME_PD ;
 int le16_to_cpu (int ) ;
 int megasas_make_prp_nvme (struct megasas_instance*,struct scsi_cmnd*,struct MPI25_IEEE_SGE_CHAIN64*,struct megasas_cmd_fusion*,int) ;
 int megasas_make_sgl_fusion (struct megasas_instance*,struct scsi_cmnd*,struct MPI25_IEEE_SGE_CHAIN64*,struct megasas_cmd_fusion*,int) ;
 int scsi_dma_map (struct scsi_cmnd*) ;

__attribute__((used)) static
int megasas_make_sgl(struct megasas_instance *instance, struct scsi_cmnd *scp,
       struct megasas_cmd_fusion *cmd)
{
 int sge_count;
 bool build_prp = 0;
 struct MPI25_IEEE_SGE_CHAIN64 *sgl_chain64;

 sge_count = scsi_dma_map(scp);

 if ((sge_count > instance->max_num_sge) || (sge_count <= 0))
  return sge_count;

 sgl_chain64 = (struct MPI25_IEEE_SGE_CHAIN64 *)&cmd->io_request->SGL;
 if ((le16_to_cpu(cmd->io_request->IoFlags) &
     MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH) &&
     (cmd->pd_interface == NVME_PD))
  build_prp = megasas_make_prp_nvme(instance, scp, sgl_chain64,
        cmd, sge_count);

 if (!build_prp)
  megasas_make_sgl_fusion(instance, scp, sgl_chain64,
     cmd, sge_count);

 return sge_count;
}
