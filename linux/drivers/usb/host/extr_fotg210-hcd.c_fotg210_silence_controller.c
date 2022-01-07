
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int lock; int rh_state; } ;


 int FOTG210_RH_HALTED ;
 int fotg210_halt (struct fotg210_hcd*) ;
 int fotg210_turn_off_all_ports (struct fotg210_hcd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void fotg210_silence_controller(struct fotg210_hcd *fotg210)
{
 fotg210_halt(fotg210);

 spin_lock_irq(&fotg210->lock);
 fotg210->rh_state = FOTG210_RH_HALTED;
 fotg210_turn_off_all_ports(fotg210);
 spin_unlock_irq(&fotg210->lock);
}
