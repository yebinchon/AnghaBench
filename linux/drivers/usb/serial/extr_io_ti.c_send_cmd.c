
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int TI_VSEND_TIMEOUT_DEFAULT ;
 int ti_vsend_sync (struct usb_device*,int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int send_cmd(struct usb_device *dev, __u8 command,
    __u8 moduleid, __u16 value, u8 *data,
    int size)
{
 return ti_vsend_sync(dev, command, value, moduleid, data, size,
   TI_VSEND_TIMEOUT_DEFAULT);
}
