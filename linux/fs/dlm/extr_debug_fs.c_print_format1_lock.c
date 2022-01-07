
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dlm_rsb {scalar_t__ res_nodeid; } ;
struct dlm_lkb {scalar_t__ lkb_status; scalar_t__ lkb_nodeid; scalar_t__ lkb_wait_type; scalar_t__ lkb_remid; int lkb_rqmode; int lkb_grmode; int lkb_id; } ;


 scalar_t__ DLM_LKSTS_CONVERT ;
 scalar_t__ DLM_LKSTS_WAITING ;
 scalar_t__ print_lockmode (int ) ;
 int seq_printf (struct seq_file*,char*,scalar_t__,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static void print_format1_lock(struct seq_file *s, struct dlm_lkb *lkb,
          struct dlm_rsb *res)
{
 seq_printf(s, "%08x %s", lkb->lkb_id, print_lockmode(lkb->lkb_grmode));

 if (lkb->lkb_status == DLM_LKSTS_CONVERT ||
     lkb->lkb_status == DLM_LKSTS_WAITING)
  seq_printf(s, " (%s)", print_lockmode(lkb->lkb_rqmode));

 if (lkb->lkb_nodeid) {
  if (lkb->lkb_nodeid != res->res_nodeid)
   seq_printf(s, " Remote: %3d %08x", lkb->lkb_nodeid,
       lkb->lkb_remid);
  else
   seq_printf(s, " Master:     %08x", lkb->lkb_remid);
 }

 if (lkb->lkb_wait_type)
  seq_printf(s, " wait_type: %d", lkb->lkb_wait_type);

 seq_putc(s, '\n');
}
