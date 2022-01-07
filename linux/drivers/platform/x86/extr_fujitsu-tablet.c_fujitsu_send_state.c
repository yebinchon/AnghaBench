
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quirks; } ;
struct TYPE_4__ {int idev; TYPE_1__ config; } ;


 int FORCE_TABLET_MODE_IF_UNDOCK ;
 int INVERT_DOCK_STATE_BIT ;
 int INVERT_TABLET_MODE_BIT ;
 int SW_DOCK ;
 int SW_TABLET_MODE ;
 TYPE_2__ fujitsu ;
 int fujitsu_read_register (int) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void fujitsu_send_state(void)
{
 int state;
 int dock, tablet_mode;

 state = fujitsu_read_register(0xdd);

 dock = state & 0x02;
 if (fujitsu.config.quirks & INVERT_DOCK_STATE_BIT)
  dock = !dock;

 if ((fujitsu.config.quirks & FORCE_TABLET_MODE_IF_UNDOCK) && (!dock)) {
  tablet_mode = 1;
 } else{
  tablet_mode = state & 0x01;
  if (fujitsu.config.quirks & INVERT_TABLET_MODE_BIT)
   tablet_mode = !tablet_mode;
 }

 input_report_switch(fujitsu.idev, SW_DOCK, dock);
 input_report_switch(fujitsu.idev, SW_TABLET_MODE, tablet_mode);
 input_sync(fujitsu.idev);
}
