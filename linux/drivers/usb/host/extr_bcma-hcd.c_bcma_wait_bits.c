
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcma_device {int dummy; } ;


 int ETIMEDOUT ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int bcma_wait_bits(struct bcma_device *dev, u16 reg, u32 bitmask,
     int timeout)
{
 int i;
 u32 val;

 for (i = 0; i < timeout; i++) {
  val = bcma_read32(dev, reg);
  if ((val & bitmask) == bitmask)
   return 0;
  udelay(10);
 }

 return -ETIMEDOUT;
}
