
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sym_tcb {struct sym_ccb* nego_cp; } ;
struct TYPE_2__ {void* resel_sa; void* itl_task_sa; } ;
struct sym_lcb {size_t* cb_tags; size_t if_tag; scalar_t__ busy_itlq; scalar_t__ busy_itl; int started_no_tag; int started_tags; TYPE_1__ head; void** itlq_tbl; int * tags_sum; } ;
struct sym_hcb {int dummy_ccbq; int free_ccbq; struct sym_ccb* last_cp; int bad_itl_ba; int bad_itlq_ba; struct sym_tcb* target; } ;
struct sym_ccb {size_t target; size_t tag; size_t tags_si; scalar_t__ started; int link2_ccbq; int link_ccbq; int host_status; int * cmd; int lun; } ;


 int DEBUG_FLAGS ;
 int DEBUG_TAGS ;
 int HS_IDLE ;
 size_t NO_TAG ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 size_t SYM_CONF_MAX_TASK ;
 void* cpu_to_scr (int ) ;
 int resel_bad_lun ;
 int sym_insque_head (int *,int *) ;
 int sym_insque_tail (int *,int *) ;
 struct sym_lcb* sym_lp (struct sym_tcb*,int ) ;
 int sym_print_addr (int *,char*,struct sym_ccb*,size_t) ;
 int sym_remque (int *) ;

void sym_free_ccb (struct sym_hcb *np, struct sym_ccb *cp)
{
 struct sym_tcb *tp = &np->target[cp->target];
 struct sym_lcb *lp = sym_lp(tp, cp->lun);

 if (DEBUG_FLAGS & DEBUG_TAGS) {
  sym_print_addr(cp->cmd, "ccb @%p freeing tag %d.\n",
    cp, cp->tag);
 }




 if (lp) {



  if (cp->tag != NO_TAG) {






   lp->cb_tags[lp->if_tag] = cp->tag;
   if (++lp->if_tag == SYM_CONF_MAX_TASK)
    lp->if_tag = 0;




   lp->itlq_tbl[cp->tag] = cpu_to_scr(np->bad_itlq_ba);
   --lp->busy_itlq;
  } else {




   lp->head.itl_task_sa = cpu_to_scr(np->bad_itl_ba);
   --lp->busy_itl;
  }



  if (lp->busy_itlq == 0 && lp->busy_itl == 0)
   lp->head.resel_sa =
    cpu_to_scr(SCRIPTB_BA(np, resel_bad_lun));
 }






 if (cp == tp->nego_cp)
  tp->nego_cp = ((void*)0);
 cp->cmd = ((void*)0);
 cp->host_status = HS_IDLE;
 sym_remque(&cp->link_ccbq);
 sym_insque_head(&cp->link_ccbq, &np->free_ccbq);
}
