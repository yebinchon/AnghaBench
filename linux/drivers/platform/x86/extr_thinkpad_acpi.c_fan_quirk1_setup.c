
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fan_ctrl_status_undef; } ;


 int fan_control_initial_status ;
 int pr_notice (char*) ;
 TYPE_1__ tp_features ;

__attribute__((used)) static void fan_quirk1_setup(void)
{
 if (fan_control_initial_status == 0x07) {
  pr_notice("fan_init: initial fan status is unknown, assuming it is in auto mode\n");
  tp_features.fan_ctrl_status_undef = 1;
 }
}
