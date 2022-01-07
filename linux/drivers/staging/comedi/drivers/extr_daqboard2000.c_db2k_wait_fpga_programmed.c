
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct db2k_private {scalar_t__ plx; } ;
struct comedi_device {struct db2k_private* private; } ;


 int ETIMEDOUT ;
 int PLX_CNTRL_USERI ;
 scalar_t__ PLX_REG_CNTRL ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int db2k_wait_fpga_programmed(struct comedi_device *dev)
{
 struct db2k_private *devpriv = dev->private;
 int i;


 for (i = 0; i < 200; i++) {
  u32 cntrl = readl(devpriv->plx + PLX_REG_CNTRL);

  if (cntrl & PLX_CNTRL_USERI)
   return 0;

  usleep_range(100, 1000);
 }
 return -ETIMEDOUT;
}
