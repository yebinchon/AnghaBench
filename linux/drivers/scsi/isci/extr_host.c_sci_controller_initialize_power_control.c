
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phys_granted_power; scalar_t__ phys_waiting; int requesters; int timer; } ;
struct isci_host {TYPE_1__ power_control; } ;


 int memset (int ,int ,int) ;
 int power_control_timeout ;
 int sci_init_timer (int *,int ) ;

__attribute__((used)) static void sci_controller_initialize_power_control(struct isci_host *ihost)
{
 sci_init_timer(&ihost->power_control.timer, power_control_timeout);

 memset(ihost->power_control.requesters, 0,
        sizeof(ihost->power_control.requesters));

 ihost->power_control.phys_waiting = 0;
 ihost->power_control.phys_granted_power = 0;
}
