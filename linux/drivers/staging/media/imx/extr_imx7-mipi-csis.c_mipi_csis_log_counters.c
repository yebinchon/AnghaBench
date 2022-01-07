
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct csi_state {int slock; TYPE_1__* events; scalar_t__ debug; TYPE_2__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {scalar_t__ counter; int name; } ;


 int MIPI_CSIS_NUM_EVENTS ;
 int dev_info (struct device*,char*,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mipi_csis_log_counters(struct csi_state *state, bool non_errors)
{
 int i = non_errors ? MIPI_CSIS_NUM_EVENTS : MIPI_CSIS_NUM_EVENTS - 4;
 struct device *dev = &state->pdev->dev;
 unsigned long flags;

 spin_lock_irqsave(&state->slock, flags);

 for (i--; i >= 0; i--) {
  if (state->events[i].counter > 0 || state->debug)
   dev_info(dev, "%s events: %d\n", state->events[i].name,
     state->events[i].counter);
 }
 spin_unlock_irqrestore(&state->slock, flags);
}
