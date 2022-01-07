
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pps_event_time {int dummy; } ;
struct pps_client_pp {unsigned int cw; scalar_t__ cw_err; TYPE_2__* pps; TYPE_1__* pardev; } ;
struct parport {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct parport* port; } ;


 scalar_t__ CLEAR_WAIT_MAX_ERRORS ;
 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int dev_err (int ,char*,...) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pps_event (TYPE_2__*,struct pps_event_time*,int ,int *) ;
 int pps_get_ts (struct pps_event_time*) ;
 int signal_is_set (struct parport*) ;

__attribute__((used)) static void parport_irq(void *handle)
{
 struct pps_event_time ts_assert, ts_clear;
 struct pps_client_pp *dev = handle;
 struct parport *port = dev->pardev->port;
 unsigned int i;
 unsigned long flags;


 pps_get_ts(&ts_assert);

 if (dev->cw == 0)

  goto out_assert;
 local_irq_save(flags);

 if (!signal_is_set(port)) {
  local_irq_restore(flags);
  dev_err(dev->pps->dev, "lost the signal\n");
  goto out_assert;
 }


 for (i = dev->cw; i; i--)
  if (!signal_is_set(port)) {
   pps_get_ts(&ts_clear);
   local_irq_restore(flags);
   dev->cw_err = 0;
   goto out_both;
  }
 local_irq_restore(flags);


 dev->cw_err++;
 if (dev->cw_err >= CLEAR_WAIT_MAX_ERRORS) {
  dev_err(dev->pps->dev, "disabled clear edge capture after %d"
    " timeouts\n", dev->cw_err);
  dev->cw = 0;
  dev->cw_err = 0;
 }

out_assert:

 pps_event(dev->pps, &ts_assert,
   PPS_CAPTUREASSERT, ((void*)0));
 return;

out_both:

 pps_event(dev->pps, &ts_assert,
   PPS_CAPTUREASSERT, ((void*)0));

 pps_event(dev->pps, &ts_clear,
   PPS_CAPTURECLEAR, ((void*)0));
 return;
}
