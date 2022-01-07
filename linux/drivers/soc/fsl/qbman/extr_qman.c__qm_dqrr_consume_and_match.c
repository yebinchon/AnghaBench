
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qm_portal {int dummy; } ;
struct qm_dqrr_entry {int stat; } ;


 int cpu_relax () ;
 int qm_dqrr_cdc_consume_1ptr (struct qm_portal*,struct qm_dqrr_entry const*,int ) ;
 struct qm_dqrr_entry* qm_dqrr_current (struct qm_portal*) ;
 int qm_dqrr_next (struct qm_portal*) ;
 int qm_dqrr_pvb_update (struct qm_portal*) ;
 scalar_t__ qm_fqid_get (struct qm_dqrr_entry const*) ;

__attribute__((used)) static int _qm_dqrr_consume_and_match(struct qm_portal *p, u32 fqid, int s,
          bool wait)
{
 const struct qm_dqrr_entry *dqrr;
 int found = 0;

 do {
  qm_dqrr_pvb_update(p);
  dqrr = qm_dqrr_current(p);
  if (!dqrr)
   cpu_relax();
 } while (wait && !dqrr);

 while (dqrr) {
  if (qm_fqid_get(dqrr) == fqid && (dqrr->stat & s))
   found = 1;
  qm_dqrr_cdc_consume_1ptr(p, dqrr, 0);
  qm_dqrr_pvb_update(p);
  qm_dqrr_next(p);
  dqrr = qm_dqrr_current(p);
 }
 return found;
}
