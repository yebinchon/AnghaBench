
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_ftdi {scalar_t__ disconnected; int command_next; int command_head; int respond_next; int respond_head; int u132_lock; struct u132_respond* respond; struct u132_command* command; } ;
struct u132_respond {int* result; int header; int address; int wait_completion; int * value; } ;
struct u132_command {int header; int length; int address; int width; int * buffer; scalar_t__ value; scalar_t__ follows; } ;


 size_t COMMAND_MASK ;
 int COMMAND_SIZE ;
 int ENODEV ;
 size_t RESPOND_MASK ;
 int RESPOND_SIZE ;
 int cPCImemrd ;
 int ftdi_elan_kick_command_queue (struct usb_ftdi*) ;
 int init_completion (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ftdi_elan_read_pcimem(struct usb_ftdi *ftdi, int mem_offset,
     u8 width, u32 *data)
{
 u8 addressofs = mem_offset / 4;
wait:if (ftdi->disconnected > 0) {
  return -ENODEV;
 } else {
  int command_size;
  int respond_size;
  mutex_lock(&ftdi->u132_lock);
  command_size = ftdi->command_next - ftdi->command_head;
  respond_size = ftdi->respond_next - ftdi->respond_head;
  if (command_size < COMMAND_SIZE && respond_size < RESPOND_SIZE)
  {
   struct u132_command *command = &ftdi->command[
    COMMAND_MASK & ftdi->command_next];
   struct u132_respond *respond = &ftdi->respond[
    RESPOND_MASK & ftdi->respond_next];
   int result = -ENODEV;
   respond->result = &result;
   respond->header = command->header = 0x00 | (cPCImemrd &
            0x0F);
   command->length = 0x04;
   respond->address = command->address = addressofs;
   command->width = 0x00 | (width & 0x0F);
   command->follows = 0;
   command->value = 0;
   command->buffer = ((void*)0);
   respond->value = data;
   init_completion(&respond->wait_completion);
   ftdi->command_next += 1;
   ftdi->respond_next += 1;
   ftdi_elan_kick_command_queue(ftdi);
   mutex_unlock(&ftdi->u132_lock);
   wait_for_completion(&respond->wait_completion);
   return result;
  } else {
   mutex_unlock(&ftdi->u132_lock);
   msleep(100);
   goto wait;
  }
 }
}
