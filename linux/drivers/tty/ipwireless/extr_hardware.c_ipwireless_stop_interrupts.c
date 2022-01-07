
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int shutting_down; int setup_timer; } ;


 int del_timer (int *) ;
 int do_close_hardware (struct ipw_hardware*) ;

void ipwireless_stop_interrupts(struct ipw_hardware *hw)
{
 if (!hw->shutting_down) {

  hw->shutting_down = 1;
  del_timer(&hw->setup_timer);


  do_close_hardware(hw);
 }
}
