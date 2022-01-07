
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {int timer; } ;
struct isci_port {TYPE_4__ timer; } ;
struct TYPE_18__ {int timer; } ;
struct isci_phy {TYPE_5__ sata_timer; } ;
struct TYPE_13__ {int timer; } ;
struct TYPE_12__ {int timer; } ;
struct TYPE_21__ {int timer; } ;
struct TYPE_22__ {TYPE_8__ timer; } ;
struct TYPE_19__ {int timer; } ;
struct TYPE_20__ {TYPE_6__ timer; } ;
struct isci_host {int logical_port_entries; TYPE_11__ phy_timer; TYPE_10__ timer; TYPE_9__ power_control; TYPE_7__ port_agent; struct isci_phy* phys; struct isci_port* ports; int scic_lock; TYPE_3__* scu_registers; int flags; } ;
struct TYPE_14__ {int interface_control; int * output_data_select; } ;
struct TYPE_15__ {TYPE_1__ sgpio; } ;
struct TYPE_16__ {TYPE_2__ peg0; } ;


 int IHOST_STOP_PENDING ;
 int SCIC_CONTROLLER_STOP_TIMEOUT ;
 int SCI_MAX_PHYS ;
 int SGPIO_HW_CONTROL ;
 int del_timer_sync (int *) ;
 int isci_gpio_count (struct isci_host*) ;
 int sci_controller_reset (struct isci_host*) ;
 int sci_controller_stop (struct isci_host*,int ) ;
 int sci_controller_stop_phys (struct isci_host*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_stop (struct isci_host*) ;
 int writel (int ,int *) ;

void isci_host_deinit(struct isci_host *ihost)
{
 int i;


 for (i = 0; i < isci_gpio_count(ihost); i++)
  writel(SGPIO_HW_CONTROL, &ihost->scu_registers->peg0.sgpio.output_data_select[i]);

 set_bit(IHOST_STOP_PENDING, &ihost->flags);

 spin_lock_irq(&ihost->scic_lock);
 sci_controller_stop(ihost, SCIC_CONTROLLER_STOP_TIMEOUT);
 spin_unlock_irq(&ihost->scic_lock);

 wait_for_stop(ihost);






 sci_controller_stop_phys(ihost);




 writel(0, &ihost->scu_registers->peg0.sgpio.interface_control);

 spin_lock_irq(&ihost->scic_lock);
 sci_controller_reset(ihost);
 spin_unlock_irq(&ihost->scic_lock);


 for (i = 0; i < ihost->logical_port_entries; i++) {
  struct isci_port *iport = &ihost->ports[i];
  del_timer_sync(&iport->timer.timer);
 }


 for (i = 0; i < SCI_MAX_PHYS; i++) {
  struct isci_phy *iphy = &ihost->phys[i];
  del_timer_sync(&iphy->sata_timer.timer);
 }

 del_timer_sync(&ihost->port_agent.timer.timer);

 del_timer_sync(&ihost->power_control.timer.timer);

 del_timer_sync(&ihost->timer.timer);

 del_timer_sync(&ihost->phy_timer.timer);
}
