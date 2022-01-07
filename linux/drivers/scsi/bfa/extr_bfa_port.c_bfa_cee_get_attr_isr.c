
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int get_attr_cbarg; int (* get_attr_cbfn ) (int ,scalar_t__) ;} ;
struct TYPE_4__ {int kva; } ;
struct bfa_cee_s {TYPE_2__ cbfn; int get_attr_pending; TYPE_1__ attr_dma; TYPE_3__* attr; scalar_t__ get_attr_status; } ;
struct bfa_cee_lldp_cfg_s {void* enabled_system_cap; void* time_to_live; } ;
struct bfa_cee_attr_s {int dummy; } ;
typedef scalar_t__ bfa_status_t ;
struct TYPE_6__ {struct bfa_cee_lldp_cfg_s lldp_remote; } ;


 int BFA_FALSE ;
 scalar_t__ BFA_STATUS_OK ;
 void* be16_to_cpu (void*) ;
 int bfa_trc (struct bfa_cee_s*,int ) ;
 int memcpy (TYPE_3__*,int ,int) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void
bfa_cee_get_attr_isr(struct bfa_cee_s *cee, bfa_status_t status)
{
 struct bfa_cee_lldp_cfg_s *lldp_cfg = &cee->attr->lldp_remote;

 cee->get_attr_status = status;
 bfa_trc(cee, 0);
 if (status == BFA_STATUS_OK) {
  bfa_trc(cee, 0);
  memcpy(cee->attr, cee->attr_dma.kva,
   sizeof(struct bfa_cee_attr_s));
  lldp_cfg->time_to_live = be16_to_cpu(lldp_cfg->time_to_live);
  lldp_cfg->enabled_system_cap =
    be16_to_cpu(lldp_cfg->enabled_system_cap);
 }
 cee->get_attr_pending = BFA_FALSE;
 if (cee->cbfn.get_attr_cbfn) {
  bfa_trc(cee, 0);
  cee->cbfn.get_attr_cbfn(cee->cbfn.get_attr_cbarg, status);
 }
}
