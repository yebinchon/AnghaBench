
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sisusb_usb_data {int dummy; } ;


 int SISUSB_TYPE_IO ;
 int sisusb_read_memio_byte (struct sisusb_usb_data*,int ,int,int *) ;
 int sisusb_write_memio_byte (struct sisusb_usb_data*,int ,int,int ) ;

int sisusb_setidxregandor(struct sisusb_usb_data *sisusb, int port, u8 idx,
  u8 myand, u8 myor)
{
 int ret;
 u8 tmp;

 ret = sisusb_write_memio_byte(sisusb, SISUSB_TYPE_IO, port, idx);
 ret |= sisusb_read_memio_byte(sisusb, SISUSB_TYPE_IO, port + 1, &tmp);
 tmp &= myand;
 tmp |= myor;
 ret |= sisusb_write_memio_byte(sisusb, SISUSB_TYPE_IO, port + 1, tmp);
 return ret;
}
