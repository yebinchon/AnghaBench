
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ is_m_series; } ;
struct comedi_device {struct ni_private* private; } ;


 int NISTC_INTA2_ENA_REG ;
 unsigned int NISTC_INTA_ENA_G0_GATE ;
 int NISTC_INTB2_ENA_REG ;
 unsigned int NISTC_INTB_ENA_G1_GATE ;
 int ni_stc_writew (struct comedi_device*,unsigned int,int) ;

__attribute__((used)) static void ni_e_series_enable_second_irq(struct comedi_device *dev,
       unsigned int gpct_index, short enable)
{
 struct ni_private *devpriv = dev->private;
 unsigned int val = 0;
 int reg;

 if (devpriv->is_m_series || gpct_index > 1)
  return;





 if (gpct_index == 0) {
  reg = NISTC_INTA2_ENA_REG;
  if (enable)
   val = NISTC_INTA_ENA_G0_GATE;
 } else {
  reg = NISTC_INTB2_ENA_REG;
  if (enable)
   val = NISTC_INTB_ENA_G1_GATE;
 }
 ni_stc_writew(dev, val, reg);
}
