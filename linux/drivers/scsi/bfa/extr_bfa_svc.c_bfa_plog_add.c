
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct bfa_plog_s {scalar_t__ plog_enabled; size_t tail; scalar_t__ head; struct bfa_plog_rec_s* plog_recs; } ;
struct bfa_plog_rec_s {int tv; } ;


 int BFA_PL_LOG_REC_INCR (scalar_t__) ;
 int WARN_ON (int) ;
 int ktime_get_real_seconds () ;
 int memcpy (struct bfa_plog_rec_s*,struct bfa_plog_rec_s*,int) ;
 scalar_t__ plkd_validate_logrec (struct bfa_plog_rec_s*) ;

__attribute__((used)) static void
bfa_plog_add(struct bfa_plog_s *plog, struct bfa_plog_rec_s *pl_rec)
{
 u16 tail;
 struct bfa_plog_rec_s *pl_recp;

 if (plog->plog_enabled == 0)
  return;

 if (plkd_validate_logrec(pl_rec)) {
  WARN_ON(1);
  return;
 }

 tail = plog->tail;

 pl_recp = &(plog->plog_recs[tail]);

 memcpy(pl_recp, pl_rec, sizeof(struct bfa_plog_rec_s));

 pl_recp->tv = ktime_get_real_seconds();
 BFA_PL_LOG_REC_INCR(plog->tail);

 if (plog->head == plog->tail)
  BFA_PL_LOG_REC_INCR(plog->head);
}
