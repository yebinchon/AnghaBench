
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;


 int BIT (int) ;
 int rfkill_set_hw_state (struct rfkill*,int) ;

__attribute__((used)) static void dell_rfkill_update_hw_state(struct rfkill *rfkill, int radio,
     int status, int hwswitch)
{
 if (hwswitch & (BIT(radio - 1)))
  rfkill_set_hw_state(rfkill, !(status & BIT(16)));
}
