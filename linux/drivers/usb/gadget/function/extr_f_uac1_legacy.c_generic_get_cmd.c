
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct usb_audio_control {int* data; } ;



__attribute__((used)) static int generic_get_cmd(struct usb_audio_control *con, u8 cmd)
{
 return con->data[cmd];
}
