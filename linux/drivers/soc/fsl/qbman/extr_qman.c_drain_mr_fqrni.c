
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union qm_mr_entry {int verb; } ;
struct qm_portal {int dummy; } ;


 int QM_MR_VERB_FQRNI ;
 int QM_MR_VERB_TYPE_MASK ;
 int mdelay (int) ;
 int pr_err (char*,int) ;
 int qm_mr_cci_consume (struct qm_portal*,int) ;
 union qm_mr_entry* qm_mr_current (struct qm_portal*) ;
 int qm_mr_next (struct qm_portal*) ;
 int qm_mr_pvb_update (struct qm_portal*) ;

__attribute__((used)) static int drain_mr_fqrni(struct qm_portal *p)
{
 const union qm_mr_entry *msg;
loop:
 qm_mr_pvb_update(p);
 msg = qm_mr_current(p);
 if (!msg) {
  mdelay(1);
  qm_mr_pvb_update(p);
  msg = qm_mr_current(p);
  if (!msg)
   return 0;
 }
 if ((msg->verb & QM_MR_VERB_TYPE_MASK) != QM_MR_VERB_FQRNI) {

  pr_err("Found verb 0x%x in MR\n", msg->verb);
  return -1;
 }
 qm_mr_next(p);
 qm_mr_cci_consume(p, 1);
 goto loop;
}
