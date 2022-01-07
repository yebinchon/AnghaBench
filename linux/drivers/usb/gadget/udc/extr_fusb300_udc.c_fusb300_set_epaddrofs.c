
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fusb300_ep_info {int maxpacket; int epnum; } ;
struct fusb300 {int addrofs; scalar_t__ reg; } ;


 int FUSB300_EPSET2_ADDROFS (int) ;
 int FUSB300_EPSET2_ADDROFS_MSK ;
 int FUSB300_FIFO_ENTRY_NUM ;
 scalar_t__ FUSB300_OFFSET_EPSET2 (int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fusb300_set_epaddrofs(struct fusb300 *fusb300,
      struct fusb300_ep_info info)
{
 u32 reg = ioread32(fusb300->reg + FUSB300_OFFSET_EPSET2(info.epnum));

 reg &= ~FUSB300_EPSET2_ADDROFS_MSK;
 reg |= FUSB300_EPSET2_ADDROFS(fusb300->addrofs);
 iowrite32(reg, fusb300->reg + FUSB300_OFFSET_EPSET2(info.epnum));
 fusb300->addrofs += (info.maxpacket + 7) / 8 * FUSB300_FIFO_ENTRY_NUM;
}
