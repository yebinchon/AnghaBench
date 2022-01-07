
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int ai_calib_source; scalar_t__ ai_calib_source_enabled; } ;
struct ni_board_struct {int ai_fifo_depth; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;


 int NI6143_AI_FIFO_FLAG_REG ;
 int NI6143_CALIB_CHAN_REG ;
 int NI6143_CALIB_CHAN_RELAY_OFF ;
 int NI6143_EOC_SET_REG ;
 int NI6143_MAGIC_REG ;
 int NI6143_PIPELINE_DELAY_REG ;
 int NISTC_INT_CTRL_REG ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;
 int ni_writeb (struct comedi_device*,int,int ) ;
 int ni_writel (struct comedi_device*,int,int ) ;
 int ni_writew (struct comedi_device*,int,int ) ;

__attribute__((used)) static void init_6143(struct comedi_device *dev)
{
 const struct ni_board_struct *board = dev->board_ptr;
 struct ni_private *devpriv = dev->private;


 ni_stc_writew(dev, 0, NISTC_INT_CTRL_REG);




 ni_writeb(dev, 0x00, NI6143_MAGIC_REG);

 ni_writeb(dev, 0x80, NI6143_PIPELINE_DELAY_REG);

 ni_writeb(dev, 0x00, NI6143_EOC_SET_REG);


 ni_writel(dev, board->ai_fifo_depth / 2, NI6143_AI_FIFO_FLAG_REG);


 devpriv->ai_calib_source_enabled = 0;
 ni_writew(dev, devpriv->ai_calib_source | NI6143_CALIB_CHAN_RELAY_OFF,
    NI6143_CALIB_CHAN_REG);
 ni_writew(dev, devpriv->ai_calib_source, NI6143_CALIB_CHAN_REG);
}
