
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum bp_state { ____Placeholder_bp_state } bp_state ;
struct TYPE_2__ {int schedule_delay; int retry_count; int max_retry_count; int max_schedule_delay; } ;


 int BP_DONE ;
 int BP_EAGAIN ;
 int BP_ECANCELED ;
 int BP_WAIT ;
 int RETRY_UNLIMITED ;
 TYPE_1__ balloon_stats ;

__attribute__((used)) static enum bp_state update_schedule(enum bp_state state)
{
 if (state == BP_WAIT)
  return BP_WAIT;

 if (state == BP_ECANCELED)
  return BP_ECANCELED;

 if (state == BP_DONE) {
  balloon_stats.schedule_delay = 1;
  balloon_stats.retry_count = 1;
  return BP_DONE;
 }

 ++balloon_stats.retry_count;

 if (balloon_stats.max_retry_count != RETRY_UNLIMITED &&
   balloon_stats.retry_count > balloon_stats.max_retry_count) {
  balloon_stats.schedule_delay = 1;
  balloon_stats.retry_count = 1;
  return BP_ECANCELED;
 }

 balloon_stats.schedule_delay <<= 1;

 if (balloon_stats.schedule_delay > balloon_stats.max_schedule_delay)
  balloon_stats.schedule_delay = balloon_stats.max_schedule_delay;

 return BP_EAGAIN;
}
