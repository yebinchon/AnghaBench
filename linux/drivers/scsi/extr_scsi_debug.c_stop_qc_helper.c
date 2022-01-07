
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct sdebug_defer {TYPE_1__ ew; int hrt; } ;
typedef enum sdeb_defer_type { ____Placeholder_sdeb_defer_type } sdeb_defer_type ;


 int SDEB_DEFER_HRT ;
 int SDEB_DEFER_WQ ;
 int cancel_work_sync (int *) ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void stop_qc_helper(struct sdebug_defer *sd_dp,
      enum sdeb_defer_type defer_t)
{
 if (!sd_dp)
  return;
 if (defer_t == SDEB_DEFER_HRT)
  hrtimer_cancel(&sd_dp->hrt);
 else if (defer_t == SDEB_DEFER_WQ)
  cancel_work_sync(&sd_dp->ew.work);
}
