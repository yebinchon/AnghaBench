
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_char ;
struct sym_tcb {int dummy; } ;
struct TYPE_2__ {int itlq_tbl_sa; } ;
struct sym_lcb {int* cb_tags; int * itlq_tbl; TYPE_1__ head; } ;
struct sym_hcb {int notask_ba; struct sym_tcb* target; } ;


 int GFP_ATOMIC ;
 int SYM_CONF_MAX_TASK ;
 int cpu_to_scr (int ) ;
 int* kcalloc (int,int,int ) ;
 int memset32 (int *,int ,int) ;
 int * sym_calloc_dma (int,char*) ;
 struct sym_lcb* sym_lp (struct sym_tcb*,size_t) ;
 int sym_mfree_dma (int *,int,char*) ;
 int vtobus (int *) ;

__attribute__((used)) static void sym_alloc_lcb_tags (struct sym_hcb *np, u_char tn, u_char ln)
{
 struct sym_tcb *tp = &np->target[tn];
 struct sym_lcb *lp = sym_lp(tp, ln);
 int i;





 lp->itlq_tbl = sym_calloc_dma(SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
 if (!lp->itlq_tbl)
  goto fail;
 lp->cb_tags = kcalloc(SYM_CONF_MAX_TASK, 1, GFP_ATOMIC);
 if (!lp->cb_tags) {
  sym_mfree_dma(lp->itlq_tbl, SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
  lp->itlq_tbl = ((void*)0);
  goto fail;
 }




 memset32(lp->itlq_tbl, cpu_to_scr(np->notask_ba), SYM_CONF_MAX_TASK);




 for (i = 0 ; i < SYM_CONF_MAX_TASK ; i++)
  lp->cb_tags[i] = i;





 lp->head.itlq_tbl_sa = cpu_to_scr(vtobus(lp->itlq_tbl));

 return;
fail:
 return;
}
