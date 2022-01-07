
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ caused_reboot; } ;


 int WDIOF_CARDRESET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ watchdog ;

__attribute__((used)) static int watchdog_get_status(void)
{
 int status = 0;

 mutex_lock(&watchdog.lock);
 status = (watchdog.caused_reboot) ? WDIOF_CARDRESET : 0;
 mutex_unlock(&watchdog.lock);

 return status;
}
