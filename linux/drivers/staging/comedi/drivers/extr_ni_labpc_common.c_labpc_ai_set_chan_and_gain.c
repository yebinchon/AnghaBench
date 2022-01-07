
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd1; int (* write_byte ) (struct comedi_device*,int ,int ) ;} ;
struct labpc_boardinfo {scalar_t__ is_labpc1200; } ;
struct comedi_device {struct labpc_private* private; struct labpc_boardinfo* board_ptr; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 unsigned int AREF_DIFF ;
 int CMD1_GAIN (unsigned int) ;
 int CMD1_MA (unsigned int) ;
 int CMD1_REG ;
 int MODE_SINGLE_CHAN ;
 int MODE_SINGLE_CHAN_INTERVAL ;
 int stub1 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void labpc_ai_set_chan_and_gain(struct comedi_device *dev,
           enum scan_mode mode,
           unsigned int chan,
           unsigned int range,
           unsigned int aref)
{
 const struct labpc_boardinfo *board = dev->board_ptr;
 struct labpc_private *devpriv = dev->private;

 if (board->is_labpc1200) {





  range += (range > 0) + (range > 7);
 }


 if ((mode == MODE_SINGLE_CHAN || mode == MODE_SINGLE_CHAN_INTERVAL) &&
     aref == AREF_DIFF)
  chan *= 2;
 devpriv->cmd1 = CMD1_MA(chan);
 devpriv->cmd1 |= CMD1_GAIN(range);

 devpriv->write_byte(dev, devpriv->cmd1, CMD1_REG);
}
