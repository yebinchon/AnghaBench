
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_ftdi {scalar_t__ disconnected; int command_next; int command_head; int u132_lock; struct u132_command* command; } ;
struct u132_command {int header; int length; int address; int width; int follows; int value; int * buffer; } ;


 size_t COMMAND_MASK ;
 int COMMAND_SIZE ;
 int ENODEV ;
 int cPCIcfgwr ;
 int ftdi_elan_kick_command_queue (struct usb_ftdi*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ftdi_elan_write_config(struct usb_ftdi *ftdi, int config_offset,
      u8 width, u32 data)
{
 u8 addressofs = config_offset / 4;
wait:if (ftdi->disconnected > 0) {
  return -ENODEV;
 } else {
  int command_size;
  mutex_lock(&ftdi->u132_lock);
  command_size = ftdi->command_next - ftdi->command_head;
  if (command_size < COMMAND_SIZE) {
   struct u132_command *command = &ftdi->command[
    COMMAND_MASK & ftdi->command_next];
   command->header = 0x00 | (cPCIcfgwr & 0x0F);
   command->length = 0x04;
   command->address = addressofs;
   command->width = 0x00 | (width & 0x0F);
   command->follows = 4;
   command->value = data;
   command->buffer = &command->value;
   ftdi->command_next += 1;
   ftdi_elan_kick_command_queue(ftdi);
   mutex_unlock(&ftdi->u132_lock);
   return 0;
  } else {
   mutex_unlock(&ftdi->u132_lock);
   msleep(100);
   goto wait;
  }
 }
}
