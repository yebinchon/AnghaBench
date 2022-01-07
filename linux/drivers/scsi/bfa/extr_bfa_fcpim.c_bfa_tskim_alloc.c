
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_tskim_s {int dummy; } ;
struct bfa_tskim_s {struct bfad_tskim_s* dtsk; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcpim_s {int tskim_free_q; } ;


 struct bfa_fcpim_s* BFA_FCPIM (struct bfa_s*) ;
 int bfa_q_deq (int *,struct bfa_tskim_s**) ;

struct bfa_tskim_s *
bfa_tskim_alloc(struct bfa_s *bfa, struct bfad_tskim_s *dtsk)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(bfa);
 struct bfa_tskim_s *tskim;

 bfa_q_deq(&fcpim->tskim_free_q, &tskim);

 if (tskim)
  tskim->dtsk = dtsk;

 return tskim;
}
