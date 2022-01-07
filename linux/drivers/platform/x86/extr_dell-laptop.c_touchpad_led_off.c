
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i8042_command (char*,int) ;

__attribute__((used)) static void touchpad_led_off(void)
{
 int command = 0x97;
 char data = 2;
 i8042_command(&data, command | 1 << 12);
}
