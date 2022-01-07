
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int EIO ;
 int RAVE_SP_RESET_DELAY_MS ;
 int mdelay (int) ;

__attribute__((used)) static int rave_sp_wdt_restart(struct watchdog_device *wdd,
          unsigned long action, void *data)
{






 mdelay(2 * RAVE_SP_RESET_DELAY_MS);

 return -EIO;
}
