
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fusb300 {scalar_t__ reg; } ;


 int FUSB300_EPSET1_ACTEN ;
 scalar_t__ FUSB300_OFFSET_EPSET1 (int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fusb300_set_ep_active(struct fusb300 *fusb300,
     u8 ep)
{
 u32 reg = ioread32(fusb300->reg + FUSB300_OFFSET_EPSET1(ep));

 reg |= FUSB300_EPSET1_ACTEN;
 iowrite32(reg, fusb300->reg + FUSB300_OFFSET_EPSET1(ep));
}
