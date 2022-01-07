
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_board_struct {scalar_t__ ao_fifo_depth; } ;
struct comedi_device {struct ni_board_struct* board_ptr; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_m_series; } ;


 unsigned int NISTC_AO_PERSONAL_BC_SRC_SEL ;
 unsigned int NISTC_AO_PERSONAL_DMA_PIO_CTRL ;
 unsigned int NISTC_AO_PERSONAL_FIFO_ENA ;
 unsigned int NISTC_AO_PERSONAL_NUM_DAC ;
 int NISTC_AO_PERSONAL_REG ;
 unsigned int NISTC_AO_PERSONAL_TMRDACWR_PW ;
 unsigned int NISTC_AO_PERSONAL_UPDATE_PW ;
 unsigned int NISTC_RESET_AO_CFG_END ;
 unsigned int NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 TYPE_1__* devpriv ;
 int ni_stc_writew (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void ni_ao_cmd_personalize(struct comedi_device *dev,
      const struct comedi_cmd *cmd)
{
 const struct ni_board_struct *board = dev->board_ptr;
 unsigned int bits;

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);

 bits =


   NISTC_AO_PERSONAL_BC_SRC_SEL |
   0 |
   NISTC_AO_PERSONAL_UPDATE_PW |

   NISTC_AO_PERSONAL_TMRDACWR_PW |
   (board->ao_fifo_depth ?
     NISTC_AO_PERSONAL_FIFO_ENA : NISTC_AO_PERSONAL_DMA_PIO_CTRL)
   ;
 ni_stc_writew(dev, bits, NISTC_AO_PERSONAL_REG);

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);
}
