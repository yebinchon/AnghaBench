
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* busctl_offset ) (int ,int ) ;} ;
struct musb {TYPE_1__ io; int mregs; } ;


 int MUSB_RXHUBADDR ;
 int musb_writeb (int ,int ,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static inline void musb_write_rxhubaddr(struct musb *musb, u8 epnum,
  u8 qh_h_addr_reg)
{
 musb_writeb(musb->mregs, musb->io.busctl_offset(epnum, MUSB_RXHUBADDR),
   qh_h_addr_reg);
}
