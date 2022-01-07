
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dma_channel {int dummy; } ;



__attribute__((used)) static int ux500_dma_is_compatible(struct dma_channel *channel,
  u16 maxpacket, void *buf, u32 length)
{
 if ((maxpacket & 0x3) ||
  ((unsigned long int) buf & 0x3) ||
  (length < 512) ||
  (length & 0x3))
  return 0;
 else
  return 1;
}
