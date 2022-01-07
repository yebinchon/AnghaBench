
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfi_phy_read_req_s {int alen; int mh; void* length; void* offset; int instance; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_phy_s {scalar_t__ residue; TYPE_1__ mb; int ioc; int dbuf_pa; scalar_t__ offset; scalar_t__ addr_off; int instance; } ;


 scalar_t__ BFA_PHY_DMA_BUF_SZ ;
 int BFI_MC_PHY ;
 int BFI_PHY_H2I_READ_REQ ;
 int bfa_alen_set (int *,scalar_t__,int ) ;
 int bfa_ioc_mbox_queue (int ,TYPE_1__*) ;
 int bfa_ioc_portid (int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 void* cpu_to_be32 (scalar_t__) ;

__attribute__((used)) static void
bfa_phy_read_send(void *cbarg)
{
 struct bfa_phy_s *phy = cbarg;
 struct bfi_phy_read_req_s *msg =
   (struct bfi_phy_read_req_s *) phy->mb.msg;
 u32 len;

 msg->instance = phy->instance;
 msg->offset = cpu_to_be32(phy->addr_off + phy->offset);
 len = (phy->residue < BFA_PHY_DMA_BUF_SZ) ?
   phy->residue : BFA_PHY_DMA_BUF_SZ;
 msg->length = cpu_to_be32(len);
 bfi_h2i_set(msg->mh, BFI_MC_PHY, BFI_PHY_H2I_READ_REQ,
  bfa_ioc_portid(phy->ioc));
 bfa_alen_set(&msg->alen, len, phy->dbuf_pa);
 bfa_ioc_mbox_queue(phy->ioc, &phy->mb);
}
