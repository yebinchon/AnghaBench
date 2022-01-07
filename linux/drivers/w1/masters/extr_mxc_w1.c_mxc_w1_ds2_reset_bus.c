
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxc_w1_device {scalar_t__ regs; } ;


 scalar_t__ MXC_W1_CONTROL ;
 int MXC_W1_CONTROL_PST ;
 int MXC_W1_CONTROL_RPP ;
 unsigned long jiffies ;
 int readb (scalar_t__) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int udelay (int) ;
 unsigned long usecs_to_jiffies (int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static u8 mxc_w1_ds2_reset_bus(void *data)
{
 struct mxc_w1_device *dev = data;
 unsigned long timeout;

 writeb(MXC_W1_CONTROL_RPP, dev->regs + MXC_W1_CONTROL);


 timeout = jiffies + usecs_to_jiffies(1500);

 udelay(511 + 512);

 do {
  u8 ctrl = readb(dev->regs + MXC_W1_CONTROL);


  if (!(ctrl & MXC_W1_CONTROL_RPP))
   return !(ctrl & MXC_W1_CONTROL_PST);
 } while (time_is_after_jiffies(timeout));

 return 1;
}
