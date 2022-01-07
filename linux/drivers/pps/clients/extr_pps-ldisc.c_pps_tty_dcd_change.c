
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct pps_event_time {int dummy; } ;
struct pps_device {int dev; } ;


 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int dev_dbg (int ,char*,char*,int ) ;
 int jiffies ;
 int pps_event (struct pps_device*,struct pps_event_time*,int ,int *) ;
 int pps_get_ts (struct pps_event_time*) ;
 struct pps_device* pps_lookup_dev (struct tty_struct*) ;

__attribute__((used)) static void pps_tty_dcd_change(struct tty_struct *tty, unsigned int status)
{
 struct pps_device *pps;
 struct pps_event_time ts;

 pps_get_ts(&ts);

 pps = pps_lookup_dev(tty);




 if (WARN_ON_ONCE(pps == ((void*)0)))
  return;


 pps_event(pps, &ts, status ? PPS_CAPTUREASSERT :
   PPS_CAPTURECLEAR, ((void*)0));

 dev_dbg(pps->dev, "PPS %s at %lu\n",
   status ? "assert" : "clear", jiffies);
}
