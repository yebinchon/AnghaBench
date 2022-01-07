
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sis_video_info {int caps; scalar_t__ sisvga_engine; int video_size; int cmdQueueSize; scalar_t__ chip; int video_vbase; int engineok; int mmio_vbase; scalar_t__ modechanged; } ;


 int AGP_CMD_QUEUE_CAP ;
 int COMMAND_QUEUE_THRESHOLD ;
 int IND_SIS_CMDQUEUE_SET ;
 int IND_SIS_CMDQUEUE_THRESHOLD ;
 int IND_SIS_TURBOQUEUE_ADR ;
 int IND_SIS_TURBOQUEUE_SET ;
 int MMIO_CMD_QUEUE_CAP ;
 int MMIO_IN32 (int ,int) ;
 int MMIO_OUT32 (int ,int ,int) ;
 int MMIO_QUEUE_PHYBASE ;
 int MMIO_QUEUE_READPORT ;
 int MMIO_QUEUE_WRITEPORT ;
 int Q_BASE_ADDR ;
 int Q_READ_PTR ;
 int Q_WRITE_PTR ;
 int SISSR ;
 scalar_t__ SIS_300_VGA ;
 scalar_t__ SIS_315_VGA ;
 int SIS_CMD_AUTO_CORR ;
 int SIS_CMD_QUEUE_RESET ;
 int SIS_CMD_QUEUE_SIZE_1M ;
 int SIS_CMD_QUEUE_SIZE_2M ;
 int SIS_CMD_QUEUE_SIZE_4M ;
 int SIS_CMD_QUEUE_SIZE_512k ;
 int SIS_CMD_QUEUE_SIZE_Z7_128k ;
 int SIS_CMD_QUEUE_SIZE_Z7_64k ;
 int SIS_MMIO_CMD_ENABLE ;
 int SIS_VRAM_CMDQUEUE_ENABLE ;
 int SiS_GetReg (int ,int ) ;
 int SiS_SetReg (int ,int ,int) ;
 int TURBO_QUEUE_CAP ;
 int VM_CMD_QUEUE_CAP ;
 scalar_t__ XGI_20 ;
 scalar_t__ XGI_40 ;
 int sisfb_syncaccel (struct sis_video_info*) ;
 int writel (int,int) ;

__attribute__((used)) static void
sisfb_engine_init(struct sis_video_info *ivideo)
{





 ivideo->caps &= ~(TURBO_QUEUE_CAP |
     MMIO_CMD_QUEUE_CAP |
     VM_CMD_QUEUE_CAP |
     AGP_CMD_QUEUE_CAP);
 ivideo->engineok = 1;
}
