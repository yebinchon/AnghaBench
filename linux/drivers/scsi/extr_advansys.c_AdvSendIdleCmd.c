
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ chip_type; int iop_base; } ;
typedef int AdvPortAddr ;
typedef TYPE_1__ ADV_DVC_VAR ;


 scalar_t__ ADV_CHIP_ASC3550 ;
 int ADV_ERROR ;
 int ADV_TICKLE_B ;
 int ADV_TICKLE_NOP ;
 int ASC_MC_IDLE_CMD ;
 int ASC_MC_IDLE_CMD_PARAMETER ;
 int ASC_MC_IDLE_CMD_STATUS ;
 int AdvReadWordLram (int ,int ,int) ;
 int AdvWriteByteRegister (int ,int ,int ) ;
 int AdvWriteDWordLramNoSwap (int ,int ,int ) ;
 int AdvWriteWordLram (int ,int ,int ) ;
 int BUG () ;
 int IOPB_TICKLE ;
 int SCSI_US_PER_MSEC ;
 int SCSI_WAIT_100_MSEC ;
 int cpu_to_le32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static int
AdvSendIdleCmd(ADV_DVC_VAR *asc_dvc,
        ushort idle_cmd, u32 idle_cmd_parameter)
{
 int result, i, j;
 AdvPortAddr iop_base;

 iop_base = asc_dvc->iop_base;






 AdvWriteWordLram(iop_base, ASC_MC_IDLE_CMD_STATUS, (ushort)0);







 AdvWriteDWordLramNoSwap(iop_base, ASC_MC_IDLE_CMD_PARAMETER,
    cpu_to_le32(idle_cmd_parameter));
 AdvWriteWordLram(iop_base, ASC_MC_IDLE_CMD, idle_cmd);




 AdvWriteByteRegister(iop_base, IOPB_TICKLE, ADV_TICKLE_B);
 if (asc_dvc->chip_type == ADV_CHIP_ASC3550) {





  AdvWriteByteRegister(iop_base, IOPB_TICKLE, ADV_TICKLE_NOP);
 }


 for (i = 0; i < SCSI_WAIT_100_MSEC; i++) {

  for (j = 0; j < SCSI_US_PER_MSEC; j++) {
   AdvReadWordLram(iop_base, ASC_MC_IDLE_CMD_STATUS,
     result);
   if (result != 0)
    return result;
   udelay(1);
  }
 }

 BUG();
 return ADV_ERROR;
}
