
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG_WDOG_BUSY ;
 int EBUSY ;
 int NOTIFY_DONE ;
 int notifier_from_errno (int ) ;
 int pr_err (char*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_status ;

__attribute__((used)) static int wdt_suspend(void)
{
 if (test_and_set_bit(DIAG_WDOG_BUSY, &wdt_status)) {
  pr_err("Linux cannot be suspended while the watchdog is in use\n");
  return notifier_from_errno(-EBUSY);
 }
 return NOTIFY_DONE;
}
