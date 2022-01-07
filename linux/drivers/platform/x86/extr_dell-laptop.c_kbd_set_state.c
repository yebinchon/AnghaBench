
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kbd_state {int triggers; int timeout_value; int timeout_unit; int als_setting; int level; int timeout_value_ac; int timeout_unit_ac; int mode_bit; } ;
struct calling_interface_buffer {int dummy; } ;


 int BIT (int ) ;
 int CLASS_KBD_BACKLIGHT ;
 int SELECT_KBD_BACKLIGHT ;
 int dell_fill_request (struct calling_interface_buffer*,int,int,int,int ) ;
 int dell_send_request (struct calling_interface_buffer*,int ,int ) ;

__attribute__((used)) static int kbd_set_state(struct kbd_state *state)
{
 struct calling_interface_buffer buffer;
 int ret;
 u32 input1;
 u32 input2;

 input1 = BIT(state->mode_bit) & 0xFFFF;
 input1 |= (state->triggers & 0xFF) << 16;
 input1 |= (state->timeout_value & 0x3F) << 24;
 input1 |= (state->timeout_unit & 0x3) << 30;
 input2 = state->als_setting & 0xFF;
 input2 |= (state->level & 0xFF) << 16;
 input2 |= (state->timeout_value_ac & 0x3F) << 24;
 input2 |= (state->timeout_unit_ac & 0x3) << 30;
 dell_fill_request(&buffer, 0x2, input1, input2, 0);
 ret = dell_send_request(&buffer,
    CLASS_KBD_BACKLIGHT, SELECT_KBD_BACKLIGHT);

 return ret;
}
