
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int regs; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int reg_read32 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int handshake(struct usb_hcd *hcd, u32 reg,
        u32 mask, u32 done, int usec)
{
 u32 result;

 do {
  result = reg_read32(hcd->regs, reg);
  if (result == ~0)
   return -ENODEV;
  result &= mask;
  if (result == done)
   return 0;
  udelay(1);
  usec--;
 } while (usec > 0);
 return -ETIMEDOUT;
}
