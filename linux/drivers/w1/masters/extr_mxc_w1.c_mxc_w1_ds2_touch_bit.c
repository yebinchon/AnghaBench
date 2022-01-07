
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxc_w1_device {scalar_t__ regs; } ;


 scalar_t__ MXC_W1_CONTROL ;
 int MXC_W1_CONTROL_RDST ;
 int MXC_W1_CONTROL_WR (int) ;
 unsigned long jiffies ;
 int readb (scalar_t__) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int udelay (int) ;
 unsigned long usecs_to_jiffies (int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static u8 mxc_w1_ds2_touch_bit(void *data, u8 bit)
{
 struct mxc_w1_device *dev = data;
 unsigned long timeout;

 writeb(MXC_W1_CONTROL_WR(bit), dev->regs + MXC_W1_CONTROL);


 timeout = jiffies + usecs_to_jiffies(200);

 udelay(60);

 do {
  u8 ctrl = readb(dev->regs + MXC_W1_CONTROL);


  if (!(ctrl & MXC_W1_CONTROL_WR(bit)))
   return !!(ctrl & MXC_W1_CONTROL_RDST);
 } while (time_is_after_jiffies(timeout));

 return 0;
}
