
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_REQUEST_ION_WRITE_ROM ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,int const*,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int,unsigned char*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int rom_write(struct usb_serial *serial, __u16 extAddr, __u16 addr,
     __u16 length, const __u8 *data)
{
 int result;
 __u16 current_length;
 unsigned char *transfer_buffer;

 transfer_buffer = kmalloc(64, GFP_KERNEL);
 if (!transfer_buffer)
  return -ENOMEM;


 result = 0;
 while (length > 0) {
  if (length > 64)
   current_length = 64;
  else
   current_length = length;
  memcpy(transfer_buffer, data, current_length);
  result = usb_control_msg(serial->dev,
     usb_sndctrlpipe(serial->dev, 0),
     USB_REQUEST_ION_WRITE_ROM, 0x40,
     addr, extAddr,
     transfer_buffer, current_length, 300);
  if (result < 0)
   break;
  length -= current_length;
  addr += current_length;
  data += current_length;
 }

 kfree(transfer_buffer);
 return result;
}
