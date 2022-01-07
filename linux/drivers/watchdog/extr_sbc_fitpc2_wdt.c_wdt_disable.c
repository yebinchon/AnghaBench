
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFACE_ON_COMMAND ;
 int REBOOT_COMMAND ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdt_lock ;
 int wdt_send_data (int ,int ) ;

__attribute__((used)) static void wdt_disable(void)
{
 mutex_lock(&wdt_lock);
 wdt_send_data(IFACE_ON_COMMAND, 0);
 wdt_send_data(REBOOT_COMMAND, 0);
 mutex_unlock(&wdt_lock);
}
