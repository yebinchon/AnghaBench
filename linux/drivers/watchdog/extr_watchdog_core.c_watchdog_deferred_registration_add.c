
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int deferred; } ;


 int list_add_tail (int *,int *) ;
 int wtd_deferred_reg_list ;

__attribute__((used)) static void watchdog_deferred_registration_add(struct watchdog_device *wdd)
{
 list_add_tail(&wdd->deferred,
        &wtd_deferred_reg_list);
}
