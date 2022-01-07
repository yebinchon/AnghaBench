
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfi_ioim_abort_req_s {int mh; scalar_t__ abort_tag; int io_tag; } ;
struct bfa_ioim_s {int reqq; int bfa; scalar_t__ abort_tag; int iotag; TYPE_1__* iosp; } ;
typedef enum bfi_ioim_h2i { ____Placeholder_bfi_ioim_h2i } bfi_ioim_h2i ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {scalar_t__ abort_explicit; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int BFI_IOIM_H2I_IOABORT_REQ ;
 int BFI_IOIM_H2I_IOCLEANUP_REQ ;
 int BFI_MC_IOIM ;
 int bfa_fn_lpu (int ) ;
 struct bfi_ioim_abort_req_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfi_h2i_set (int ,int ,int,int ) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_ioim_send_abort(struct bfa_ioim_s *ioim)
{
 struct bfi_ioim_abort_req_s *m;
 enum bfi_ioim_h2i msgop;




 m = bfa_reqq_next(ioim->bfa, ioim->reqq);
 if (!m)
  return BFA_FALSE;




 if (ioim->iosp->abort_explicit)
  msgop = BFI_IOIM_H2I_IOABORT_REQ;
 else
  msgop = BFI_IOIM_H2I_IOCLEANUP_REQ;

 bfi_h2i_set(m->mh, BFI_MC_IOIM, msgop, bfa_fn_lpu(ioim->bfa));
 m->io_tag = cpu_to_be16(ioim->iotag);
 m->abort_tag = ++ioim->abort_tag;




 bfa_reqq_produce(ioim->bfa, ioim->reqq, m->mh);
 return BFA_TRUE;
}
