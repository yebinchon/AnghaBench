
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int ao_mode2; } ;
struct comedi_device {struct ni_private* private; } ;


 int NISTC_AO_MODE2_FIFO_MODE_HF ;
 int NISTC_AO_MODE2_FIFO_MODE_HF_F ;
 int NISTC_AO_MODE2_FIFO_MODE_MASK ;
 int NISTC_AO_MODE2_FIFO_REXMIT_ENA ;
 int NISTC_AO_MODE2_REG ;
 int NISTC_AO_START_AOFREQ_ENA ;
 int NISTC_AO_START_SEL_REG ;
 int NISTC_RESET_AO_CFG_END ;
 int NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void ni_ao_cmd_set_fifo_mode(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);

 devpriv->ao_mode2 &= ~NISTC_AO_MODE2_FIFO_MODE_MASK;



 devpriv->ao_mode2 |= NISTC_AO_MODE2_FIFO_MODE_HF;


 devpriv->ao_mode2 &= ~NISTC_AO_MODE2_FIFO_REXMIT_ENA;
 ni_stc_writew(dev, devpriv->ao_mode2, NISTC_AO_MODE2_REG);


 ni_stc_writew(dev, NISTC_AO_START_AOFREQ_ENA, NISTC_AO_START_SEL_REG);

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);


}
