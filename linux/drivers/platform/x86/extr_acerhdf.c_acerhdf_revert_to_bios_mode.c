
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ polling_delay; } ;


 int ACERHDF_FAN_AUTO ;
 int acerhdf_change_fanstate (int ) ;
 scalar_t__ kernelmode ;
 int pr_notice (char*) ;
 TYPE_1__* thz_dev ;

__attribute__((used)) static inline void acerhdf_revert_to_bios_mode(void)
{
 acerhdf_change_fanstate(ACERHDF_FAN_AUTO);
 kernelmode = 0;
 if (thz_dev)
  thz_dev->polling_delay = 0;
 pr_notice("kernel mode fan control OFF\n");
}
