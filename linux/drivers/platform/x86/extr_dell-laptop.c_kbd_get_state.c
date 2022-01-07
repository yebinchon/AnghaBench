
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_state {int triggers; int timeout_value; int timeout_unit; int als_setting; int als_value; int level; int timeout_value_ac; int timeout_unit_ac; int mode_bit; } ;
struct calling_interface_buffer {int* output; } ;


 int CLASS_KBD_BACKLIGHT ;
 int SELECT_KBD_BACKLIGHT ;
 int dell_fill_request (struct calling_interface_buffer*,int,int ,int ,int ) ;
 int dell_send_request (struct calling_interface_buffer*,int ,int ) ;
 int ffs (int) ;

__attribute__((used)) static int kbd_get_state(struct kbd_state *state)
{
 struct calling_interface_buffer buffer;
 int ret;

 dell_fill_request(&buffer, 0x1, 0, 0, 0);
 ret = dell_send_request(&buffer,
    CLASS_KBD_BACKLIGHT, SELECT_KBD_BACKLIGHT);
 if (ret)
  return ret;

 state->mode_bit = ffs(buffer.output[1] & 0xFFFF);
 if (state->mode_bit != 0)
  state->mode_bit--;

 state->triggers = (buffer.output[1] >> 16) & 0xFF;
 state->timeout_value = (buffer.output[1] >> 24) & 0x3F;
 state->timeout_unit = (buffer.output[1] >> 30) & 0x3;
 state->als_setting = buffer.output[2] & 0xFF;
 state->als_value = (buffer.output[2] >> 8) & 0xFF;
 state->level = (buffer.output[2] >> 16) & 0xFF;
 state->timeout_value_ac = (buffer.output[2] >> 24) & 0x3F;
 state->timeout_unit_ac = (buffer.output[2] >> 30) & 0x3;

 return ret;
}
