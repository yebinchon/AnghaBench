
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int this_residual; int ptr; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; TYPE_1__ SCp; } ;
struct NCR5380_hostdata {int dummy; } ;





 int DMA_MIN_SIZE ;
 scalar_t__ DMA_TO_DEVICE ;
 scalar_t__ IS_A_TT () ;
 int NDEBUG_DMA ;
 int STRAM_ADDR (int ) ;
 int STRAM_BUFFER_SIZE ;
 scalar_t__ atari_dma_buffer ;
 int dprintk (int ,char*,int,int) ;
 int falcon_classify_cmd (struct scsi_cmnd*) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int atari_scsi_dma_xfer_len(struct NCR5380_hostdata *hostdata,
                                   struct scsi_cmnd *cmd)
{
 int wanted_len = cmd->SCp.this_residual;
 int possible_len, limit;

 if (wanted_len < DMA_MIN_SIZE)
  return 0;

 if (IS_A_TT())

  return wanted_len;
 if (cmd->sc_data_direction == DMA_TO_DEVICE) {




  possible_len = wanted_len;
 } else {




  if (wanted_len & 0x1ff)
   possible_len = 0;
  else {


   switch (falcon_classify_cmd(cmd)) {
   case 129:
    possible_len = wanted_len;
    break;
   case 128:
    possible_len = 0;
    break;
   case 130:
   default:


    possible_len = (wanted_len < 1024) ? 0 : wanted_len;
    break;
   }
  }
 }


 limit = (atari_dma_buffer && !STRAM_ADDR(virt_to_phys(cmd->SCp.ptr))) ?
      STRAM_BUFFER_SIZE : 255*512;
 if (possible_len > limit)
  possible_len = limit;

 if (possible_len != wanted_len)
  dprintk(NDEBUG_DMA, "DMA transfer now %d bytes instead of %d\n",
          possible_len, wanted_len);

 return possible_len;
}
