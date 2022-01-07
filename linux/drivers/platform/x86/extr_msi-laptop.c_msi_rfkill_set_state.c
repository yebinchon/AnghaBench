
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfkill {int dummy; } ;
struct TYPE_2__ {scalar_t__ ec_read_only; } ;


 TYPE_1__* quirks ;
 int rfkill_set_hw_state (struct rfkill*,int) ;
 int rfkill_set_sw_state (struct rfkill*,int) ;

__attribute__((used)) static bool msi_rfkill_set_state(struct rfkill *rfkill, bool blocked)
{
 if (quirks->ec_read_only)
  return rfkill_set_hw_state(rfkill, blocked);
 else
  return rfkill_set_sw_state(rfkill, blocked);
}
