
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtu3_ep {int epnum; int is_in; struct mtu3* mtu; } ;
struct mtu3 {int mac_base; } ;


 int EP_RST (int ,int ) ;
 int U3D_EP_RST ;
 int mtu3_clrbits (int ,int ,int ) ;
 int mtu3_setbits (int ,int ,int ) ;

__attribute__((used)) static void mtu3_ep_reset(struct mtu3_ep *mep)
{
 struct mtu3 *mtu = mep->mtu;
 u32 rst_bit = EP_RST(mep->is_in, mep->epnum);

 mtu3_setbits(mtu->mac_base, U3D_EP_RST, rst_bit);
 mtu3_clrbits(mtu->mac_base, U3D_EP_RST, rst_bit);
}
