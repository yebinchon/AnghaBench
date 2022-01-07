
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct log_group {TYPE_1__* ent; } ;
struct arena_info {int* log_index; } ;
struct TYPE_2__ {int seq; } ;


 int EINVAL ;
 int cpu_to_le32 (int) ;
 int log_seq (struct log_group*,int) ;

__attribute__((used)) static int btt_log_get_old(struct arena_info *a, struct log_group *log)
{
 int idx0 = a->log_index[0];
 int idx1 = a->log_index[1];
 int old;






 if (log_seq(log, idx0) == 0) {
  log->ent[idx0].seq = cpu_to_le32(1);
  return 0;
 }

 if (log_seq(log, idx0) == log_seq(log, idx1))
  return -EINVAL;
 if (log_seq(log, idx0) + log_seq(log, idx1) > 5)
  return -EINVAL;

 if (log_seq(log, idx0) < log_seq(log, idx1)) {
  if ((log_seq(log, idx1) - log_seq(log, idx0)) == 1)
   old = 0;
  else
   old = 1;
 } else {
  if ((log_seq(log, idx0) - log_seq(log, idx1)) == 1)
   old = 1;
  else
   old = 0;
 }

 return old;
}
