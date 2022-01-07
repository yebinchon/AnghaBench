
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char** bit_desc ;
 char** bit_desc_ss ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void dump_port_status_diff(u32 prev_status, u32 new_status, bool usb3)
{
 int i = 0;
 u32 bit = 1;
 const char * const *desc = bit_desc;

 if (usb3)
  desc = bit_desc_ss;

 pr_debug("status prev -> new: %08x -> %08x\n", prev_status, new_status);
 while (bit) {
  u32 prev = prev_status & bit;
  u32 new = new_status & bit;
  char change;

  if (!prev && new)
   change = '+';
  else if (prev && !new)
   change = '-';
  else
   change = ' ';

  if (prev || new) {
   pr_debug(" %c%s\n", change, desc[i]);

   if (bit == 1)
    pr_debug(" %c%s\n", change, "USB_PORT_STAT_SPEED_5GBPS");
  }
  bit <<= 1;
  i++;
 }
 pr_debug("\n");
}
