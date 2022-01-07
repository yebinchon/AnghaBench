
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union qm_mr_entry {int verb; } ;
struct qm_portal {int dummy; } ;


 int QM_MR_VERB_TYPE_MASK ;
 int qm_mr_cci_consume_to_current (struct qm_portal*) ;
 union qm_mr_entry* qm_mr_current (struct qm_portal*) ;
 int qm_mr_next (struct qm_portal*) ;
 int qm_mr_pvb_update (struct qm_portal*) ;

__attribute__((used)) static int _qm_mr_consume_and_match_verb(struct qm_portal *p, int v)
{
 const union qm_mr_entry *msg;
 int found = 0;

 qm_mr_pvb_update(p);
 msg = qm_mr_current(p);
 while (msg) {
  if ((msg->verb & QM_MR_VERB_TYPE_MASK) == v)
   found = 1;
  qm_mr_next(p);
  qm_mr_cci_consume_to_current(p);
  qm_mr_pvb_update(p);
  msg = qm_mr_current(p);
 }
 return found;
}
