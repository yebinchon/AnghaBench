
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd_private {scalar_t__ lcfg; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;


 scalar_t__ LAS0_BOARD_RESET ;
 scalar_t__ LAS0_CLEAR ;
 scalar_t__ LAS0_IT ;
 scalar_t__ PLX_REG_INTCSR ;
 int readw (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void rtd_reset(struct comedi_device *dev)
{
 struct rtd_private *devpriv = dev->private;

 writel(0, dev->mmio + LAS0_BOARD_RESET);
 usleep_range(100, 1000);
 writel(0, devpriv->lcfg + PLX_REG_INTCSR);
 writew(0, dev->mmio + LAS0_IT);
 writew(~0, dev->mmio + LAS0_CLEAR);
 readw(dev->mmio + LAS0_CLEAR);
}
