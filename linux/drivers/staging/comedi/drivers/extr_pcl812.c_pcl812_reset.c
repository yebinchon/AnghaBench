
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl812_private {int mode_reg_int; int last_ai_chanspec; } ;
struct pcl812_board {unsigned int n_aochan; scalar_t__ has_dio; } ;
struct comedi_device {scalar_t__ iobase; struct pcl812_private* private; struct pcl812_board* board_ptr; } ;


 int CR_PACK (int,int ,int ) ;
 scalar_t__ PCL812_AO_LSB_REG (unsigned int) ;
 scalar_t__ PCL812_AO_MSB_REG (unsigned int) ;
 int PCL812_CTRL_DISABLE_TRIG ;
 scalar_t__ PCL812_CTRL_REG ;
 scalar_t__ PCL812_DO_LSB_REG ;
 scalar_t__ PCL812_DO_MSB_REG ;
 int outb (int,scalar_t__) ;
 int pcl812_ai_clear_eoc (struct comedi_device*) ;
 int pcl812_ai_set_chan_range (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void pcl812_reset(struct comedi_device *dev)
{
 const struct pcl812_board *board = dev->board_ptr;
 struct pcl812_private *devpriv = dev->private;
 unsigned int chan;


 outb(devpriv->mode_reg_int | PCL812_CTRL_DISABLE_TRIG,
      dev->iobase + PCL812_CTRL_REG);
 pcl812_ai_clear_eoc(dev);





 devpriv->last_ai_chanspec = CR_PACK(16, 0, 0);
 pcl812_ai_set_chan_range(dev, CR_PACK(0, 0, 0), 0);


 for (chan = 0; chan < board->n_aochan; chan++) {
  outb(0, dev->iobase + PCL812_AO_LSB_REG(chan));
  outb(0, dev->iobase + PCL812_AO_MSB_REG(chan));
 }


 if (board->has_dio) {
  outb(0, dev->iobase + PCL812_DO_MSB_REG);
  outb(0, dev->iobase + PCL812_DO_LSB_REG);
 }
}
