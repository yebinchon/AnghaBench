
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfa384x {scalar_t__* port_enabled; int commsqual_timer; int state; int link_status; int rx_urb; TYPE_1__* wlandev; } ;
struct TYPE_2__ {int hwremoved; } ;


 int HFA384x_LINK_NOTCONNECTED ;
 int HFA384x_NUMPORTS_MAX ;
 int HFA384x_STATE_INIT ;
 int del_timer_sync (int *) ;
 int hfa384x_cmd_initialize (struct hfa384x*) ;
 int might_sleep () ;
 int usb_kill_urb (int *) ;

int hfa384x_drvr_stop(struct hfa384x *hw)
{
 int i;

 might_sleep();




 if (!hw->wlandev->hwremoved) {

  hfa384x_cmd_initialize(hw);


  usb_kill_urb(&hw->rx_urb);
 }

 hw->link_status = HFA384x_LINK_NOTCONNECTED;
 hw->state = HFA384x_STATE_INIT;

 del_timer_sync(&hw->commsqual_timer);


 for (i = 0; i < HFA384x_NUMPORTS_MAX; i++)
  hw->port_enabled[i] = 0;

 return 0;
}
