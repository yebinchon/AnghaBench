
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calling_interface_buffer {int* output; } ;


 int BIT (int) ;
 int CLASS_INFO ;
 int SELECT_RFKILL ;
 int dell_fill_request (struct calling_interface_buffer*,int,int ,int ,int ) ;
 int dell_send_request (struct calling_interface_buffer*,int ,int ) ;

__attribute__((used)) static int dell_rfkill_set(void *data, bool blocked)
{
 int disable = blocked ? 1 : 0;
 unsigned long radio = (unsigned long)data;
 int hwswitch_bit = (unsigned long)data - 1;
 struct calling_interface_buffer buffer;
 int hwswitch;
 int status;
 int ret;

 dell_fill_request(&buffer, 0, 0, 0, 0);
 ret = dell_send_request(&buffer, CLASS_INFO, SELECT_RFKILL);
 if (ret)
  return ret;
 status = buffer.output[1];

 dell_fill_request(&buffer, 0x2, 0, 0, 0);
 ret = dell_send_request(&buffer, CLASS_INFO, SELECT_RFKILL);
 if (ret)
  return ret;
 hwswitch = buffer.output[1];



 if (ret == 0 && (hwswitch & BIT(hwswitch_bit)) &&
     (status & BIT(0)) && !(status & BIT(16)))
  disable = 1;

 dell_fill_request(&buffer, 1 | (radio<<8) | (disable << 16), 0, 0, 0);
 ret = dell_send_request(&buffer, CLASS_INFO, SELECT_RFKILL);
 return ret;
}
