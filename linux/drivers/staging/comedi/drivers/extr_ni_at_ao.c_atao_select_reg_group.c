
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; struct atao_private* private; } ;
struct atao_private {int cfg1; } ;


 int ATAO_CFG1_GRP2WR ;
 scalar_t__ ATAO_CFG1_REG ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void atao_select_reg_group(struct comedi_device *dev, int group)
{
 struct atao_private *devpriv = dev->private;

 if (group)
  devpriv->cfg1 |= ATAO_CFG1_GRP2WR;
 else
  devpriv->cfg1 &= ~ATAO_CFG1_GRP2WR;
 outw(devpriv->cfg1, dev->iobase + ATAO_CFG1_REG);
}
