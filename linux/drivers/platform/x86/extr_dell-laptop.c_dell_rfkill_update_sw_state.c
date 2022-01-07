
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct calling_interface_buffer {int dummy; } ;


 int BIT (int) ;
 int CLASS_INFO ;
 int SELECT_RFKILL ;
 int dell_fill_request (struct calling_interface_buffer*,int,int ,int ,int ) ;
 int dell_send_request (struct calling_interface_buffer*,int ,int ) ;
 int rfkill_blocked (struct rfkill*) ;
 int rfkill_set_sw_state (struct rfkill*,int) ;

__attribute__((used)) static void dell_rfkill_update_sw_state(struct rfkill *rfkill, int radio,
     int status)
{
 if (status & BIT(0)) {

  struct calling_interface_buffer buffer;
  int block = rfkill_blocked(rfkill);
  dell_fill_request(&buffer,
       1 | (radio << 8) | (block << 16), 0, 0, 0);
  dell_send_request(&buffer, CLASS_INFO, SELECT_RFKILL);
 } else {

  rfkill_set_sw_state(rfkill, !!(status & BIT(radio + 16)));
 }
}
