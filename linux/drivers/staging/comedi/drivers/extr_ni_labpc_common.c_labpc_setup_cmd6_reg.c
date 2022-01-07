
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd6; int (* write_byte ) (struct comedi_device*,int ,int ) ;} ;
struct labpc_boardinfo {int is_labpc1200; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct labpc_private* private; struct labpc_boardinfo* board_ptr; } ;
typedef enum transfer_type { ____Placeholder_transfer_type } transfer_type ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 unsigned int AREF_GROUND ;
 int CMD6_ADCUNI ;
 int CMD6_DQINTEN ;
 int CMD6_HFINTEN ;
 int CMD6_NRSE ;
 int CMD6_REG ;
 int CMD6_SCANUP ;
 int MODE_MULT_CHAN_UP ;
 scalar_t__ comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int fifo_half_full_transfer ;
 int stub1 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void labpc_setup_cmd6_reg(struct comedi_device *dev,
     struct comedi_subdevice *s,
     enum scan_mode mode,
     enum transfer_type xfer,
     unsigned int range,
     unsigned int aref,
     bool ena_intr)
{
 const struct labpc_boardinfo *board = dev->board_ptr;
 struct labpc_private *devpriv = dev->private;

 if (!board->is_labpc1200)
  return;


 if (aref != AREF_GROUND)
  devpriv->cmd6 |= CMD6_NRSE;
 else
  devpriv->cmd6 &= ~CMD6_NRSE;


 if (comedi_range_is_unipolar(s, range))
  devpriv->cmd6 |= CMD6_ADCUNI;
 else
  devpriv->cmd6 &= ~CMD6_ADCUNI;


 if (xfer == fifo_half_full_transfer)
  devpriv->cmd6 |= CMD6_HFINTEN;
 else
  devpriv->cmd6 &= ~CMD6_HFINTEN;


 if (ena_intr)
  devpriv->cmd6 |= CMD6_DQINTEN;
 else
  devpriv->cmd6 &= ~CMD6_DQINTEN;


 if (mode == MODE_MULT_CHAN_UP)
  devpriv->cmd6 |= CMD6_SCANUP;
 else
  devpriv->cmd6 &= ~CMD6_SCANUP;

 devpriv->write_byte(dev, devpriv->cmd6, CMD6_REG);
}
