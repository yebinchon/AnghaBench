
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfkill {int dummy; } ;


 int WIRELESS_ADDR ;
 int WIRELESS_KILLSWITCH ;
 int ec_read_u8 (int ) ;
 int rfkill_set_hw_state (struct rfkill*,int) ;

__attribute__((used)) static void compal_rfkill_poll(struct rfkill *rfkill, void *data)
{
 u8 result = ec_read_u8(WIRELESS_ADDR);
 bool hw_blocked = !(result & WIRELESS_KILLSWITCH);
 rfkill_set_hw_state(rfkill, hw_blocked);
}
