
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_phy_stats_req_s {int alen; int mh; int instance; } ;
struct bfa_phy_stats_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_phy_s {TYPE_1__ mb; int ioc; int dbuf_pa; int instance; } ;


 int BFI_MC_PHY ;
 int BFI_PHY_H2I_STATS_REQ ;
 int bfa_alen_set (int *,int,int ) ;
 int bfa_ioc_mbox_queue (int ,TYPE_1__*) ;
 int bfa_ioc_portid (int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_phy_stats_send(void *cbarg)
{
 struct bfa_phy_s *phy = cbarg;
 struct bfi_phy_stats_req_s *msg =
   (struct bfi_phy_stats_req_s *) phy->mb.msg;

 msg->instance = phy->instance;
 bfi_h2i_set(msg->mh, BFI_MC_PHY, BFI_PHY_H2I_STATS_REQ,
  bfa_ioc_portid(phy->ioc));
 bfa_alen_set(&msg->alen, sizeof(struct bfa_phy_stats_s), phy->dbuf_pa);
 bfa_ioc_mbox_queue(phy->ioc, &phy->mb);
}
