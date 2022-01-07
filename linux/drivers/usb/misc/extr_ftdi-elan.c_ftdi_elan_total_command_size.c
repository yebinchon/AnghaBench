
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int command_head; struct u132_command* command; } ;
struct u132_command {scalar_t__ follows; } ;


 size_t COMMAND_MASK ;

__attribute__((used)) static int ftdi_elan_total_command_size(struct usb_ftdi *ftdi, int command_size)
{
 int total_size = 0;
 int I = command_size;
 int i = ftdi->command_head;
 while (I-- > 0) {
  struct u132_command *command = &ftdi->command[COMMAND_MASK &
             i++];
  total_size += 5 + command->follows;
 } return total_size;
}
