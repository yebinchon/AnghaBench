
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int rtsi_shared_mux_reg; scalar_t__ is_m_series; } ;
struct comedi_device {struct ni_private* private; } ;


 int NISTC_RTSI_BOARD_REG ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;

__attribute__((used)) static void set_ith_rtsi_brd_reg(int i, int reg, struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 int reg_i_sz = 3;
 int reg_i_mask;
 int reg_i_shift;

 if (devpriv->is_m_series)
  reg_i_sz = 4;
 reg_i_mask = ~((~0) << reg_i_sz);
 reg_i_shift = i * reg_i_sz;


 devpriv->rtsi_shared_mux_reg &= ~(reg_i_mask << reg_i_shift);

 devpriv->rtsi_shared_mux_reg |= (reg & reg_i_mask) << reg_i_shift;

 ni_stc_writew(dev, devpriv->rtsi_shared_mux_reg, NISTC_RTSI_BOARD_REG);
}
