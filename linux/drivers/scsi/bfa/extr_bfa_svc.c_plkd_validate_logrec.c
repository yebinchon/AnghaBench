
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_plog_rec_s {scalar_t__ log_type; scalar_t__ log_num_ints; } ;


 scalar_t__ BFA_PL_INT_LOG_SZ ;
 scalar_t__ BFA_PL_LOG_TYPE_INT ;
 scalar_t__ BFA_PL_LOG_TYPE_STRING ;

__attribute__((used)) static int
plkd_validate_logrec(struct bfa_plog_rec_s *pl_rec)
{
 if ((pl_rec->log_type != BFA_PL_LOG_TYPE_INT) &&
  (pl_rec->log_type != BFA_PL_LOG_TYPE_STRING))
  return 1;

 if ((pl_rec->log_type != BFA_PL_LOG_TYPE_INT) &&
  (pl_rec->log_num_ints > BFA_PL_INT_LOG_SZ))
  return 1;

 return 0;
}
