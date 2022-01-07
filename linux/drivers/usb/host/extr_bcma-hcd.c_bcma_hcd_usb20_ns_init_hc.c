
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_device {int dummy; } ;


 int bcma_read32 (struct bcma_device*,int) ;
 int bcma_write32 (struct bcma_device*,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void bcma_hcd_usb20_ns_init_hc(struct bcma_device *dev)
{
 u32 val;


 val = bcma_read32(dev, 0x94);
 val &= 0xffff;
 val |= 0x80 << 16;
 bcma_write32(dev, 0x94, val);


 val = bcma_read32(dev, 0x9c);
 val |= 1;
 bcma_write32(dev, 0x9c, val);






 usleep_range(1000, 2000);
}
