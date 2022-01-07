
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int addr_hi; int addr_lo; } ;
struct TYPE_6__ {TYPE_2__ a32; } ;
struct TYPE_4__ {int maxfrsize; } ;
struct bfi_fcport_enable_req_s {int mh; TYPE_3__ stats_dma_addr; int use_flash_cfg; TYPE_1__ port_cfg; scalar_t__ msgtag; int pwwn; int nwwn; } ;
struct bfa_fcport_s {int bfa; int stats_pa; int use_flash_cfg; TYPE_1__ cfg; scalar_t__ msgtag; int pwwn; int nwwn; int reqq_wait; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_REQQ_PORT ;
 int BFA_TRUE ;
 int BFI_FCPORT_H2I_ENABLE_REQ ;
 int BFI_MC_FCPORT ;
 int bfa_dma_be_addr_set (TYPE_3__,int ) ;
 int bfa_fn_lpu (int ) ;
 struct bfi_fcport_enable_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfa_trc (int ,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_fcport_send_enable(struct bfa_fcport_s *fcport)
{
 struct bfi_fcport_enable_req_s *m;





 fcport->msgtag++;




 m = bfa_reqq_next(fcport->bfa, BFA_REQQ_PORT);
 if (!m) {
  bfa_reqq_wait(fcport->bfa, BFA_REQQ_PORT,
       &fcport->reqq_wait);
  return BFA_FALSE;
 }

 bfi_h2i_set(m->mh, BFI_MC_FCPORT, BFI_FCPORT_H2I_ENABLE_REQ,
   bfa_fn_lpu(fcport->bfa));
 m->nwwn = fcport->nwwn;
 m->pwwn = fcport->pwwn;
 m->port_cfg = fcport->cfg;
 m->msgtag = fcport->msgtag;
 m->port_cfg.maxfrsize = cpu_to_be16(fcport->cfg.maxfrsize);
  m->use_flash_cfg = fcport->use_flash_cfg;
 bfa_dma_be_addr_set(m->stats_dma_addr, fcport->stats_pa);
 bfa_trc(fcport->bfa, m->stats_dma_addr.a32.addr_lo);
 bfa_trc(fcport->bfa, m->stats_dma_addr.a32.addr_hi);




 bfa_reqq_produce(fcport->bfa, BFA_REQQ_PORT, m->mh);
 return BFA_TRUE;
}
