
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int DSSDBG (char*,...) ;






 int dss_resume_all_devices () ;
 int dss_suspend_all_devices () ;

__attribute__((used)) static int omap_dss_pm_notif(struct notifier_block *b, unsigned long v, void *d)
{
 DSSDBG("pm notif %lu\n", v);

 switch (v) {
 case 128:
 case 133:
 case 129:
  DSSDBG("suspending displays\n");
  return dss_suspend_all_devices();

 case 130:
 case 132:
 case 131:
  DSSDBG("resuming displays\n");
  return dss_resume_all_devices();

 default:
  return 0;
 }
}
