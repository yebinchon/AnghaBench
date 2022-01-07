
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_ftdi {int command_head; struct u132_command* command; } ;
struct u132_command {int follows; int header; int length; char address; char width; int * buffer; } ;


 size_t COMMAND_MASK ;

__attribute__((used)) static int fill_buffer_with_all_queued_commands(struct usb_ftdi *ftdi,
      char *buf, int command_size, int total_size)
{
 int ed_commands = 0;
 int b = 0;
 int I = command_size;
 int i = ftdi->command_head;
 while (I-- > 0) {
  struct u132_command *command = &ftdi->command[COMMAND_MASK &
             i++];
  int F = command->follows;
  u8 *f = command->buffer;
  if (command->header & 0x80) {
   ed_commands |= 1 << (0x3 & (command->header >> 5));
  }
  buf[b++] = command->header;
  buf[b++] = (command->length >> 0) & 0x00FF;
  buf[b++] = (command->length >> 8) & 0x00FF;
  buf[b++] = command->address;
  buf[b++] = command->width;
  while (F-- > 0) {
   buf[b++] = *f++;
  }
 }
 return ed_commands;
}
