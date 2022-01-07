
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct db2k_private {scalar_t__ plx; } ;
struct comedi_device {struct db2k_private* private; } ;


 int PLX_CNTRL_EERELOAD ;
 scalar_t__ PLX_REG_CNTRL ;
 int mdelay (int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void db2k_reload_plx(struct comedi_device *dev)
{
 struct db2k_private *devpriv = dev->private;
 u32 cntrl;

 cntrl = readl(devpriv->plx + PLX_REG_CNTRL);
 cntrl &= ~PLX_CNTRL_EERELOAD;
 writel(cntrl, devpriv->plx + PLX_REG_CNTRL);
 mdelay(10);
 cntrl |= PLX_CNTRL_EERELOAD;
 writel(cntrl, devpriv->plx + PLX_REG_CNTRL);
 mdelay(10);
 cntrl &= ~PLX_CNTRL_EERELOAD;
 writel(cntrl, devpriv->plx + PLX_REG_CNTRL);
 mdelay(10);
}
