
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bfad_ioim_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_itnim_s {int io_q; } ;
struct bfa_iotag_s {int tag; } ;
struct bfa_ioim_s {int qe; scalar_t__ nsgpgs; int nsges; struct bfa_itnim_s* itnim; struct bfad_ioim_s* dio; } ;
struct bfa_fcpim_s {int ios_active; TYPE_1__* fcp; } ;
struct TYPE_2__ {int iotag_ioim_free_q; } ;


 struct bfa_fcpim_s* BFA_FCPIM (struct bfa_s*) ;
 struct bfa_ioim_s* BFA_IOIM_FROM_TAG (struct bfa_fcpim_s*,int ) ;
 int bfa_q_deq (int *,struct bfa_iotag_s**) ;
 int bfa_stats (struct bfa_itnim_s*,int ) ;
 int list_add_tail (int *,int *) ;
 int no_iotags ;
 int total_ios ;

struct bfa_ioim_s *
bfa_ioim_alloc(struct bfa_s *bfa, struct bfad_ioim_s *dio,
  struct bfa_itnim_s *itnim, u16 nsges)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(bfa);
 struct bfa_ioim_s *ioim;
 struct bfa_iotag_s *iotag = ((void*)0);




 bfa_q_deq(&fcpim->fcp->iotag_ioim_free_q, &iotag);
 if (!iotag) {
  bfa_stats(itnim, no_iotags);
  return ((void*)0);
 }

 ioim = BFA_IOIM_FROM_TAG(fcpim, iotag->tag);

 ioim->dio = dio;
 ioim->itnim = itnim;
 ioim->nsges = nsges;
 ioim->nsgpgs = 0;

 bfa_stats(itnim, total_ios);
 fcpim->ios_active++;

 list_add_tail(&ioim->qe, &itnim->io_q);

 return ioim;
}
