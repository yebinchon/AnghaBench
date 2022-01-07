
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int dummy; } ;


 int SISCR ;
 scalar_t__ sisusb_setidxreg (struct sisusb_usb_data*,int ,int,int) ;

__attribute__((used)) static inline void
sisusb_initialize(struct sisusb_usb_data *sisusb)
{

 if (sisusb_setidxreg(sisusb, SISCR, 0x0c, 0x00))
  return;
 if (sisusb_setidxreg(sisusb, SISCR, 0x0d, 0x00))
  return;
 if (sisusb_setidxreg(sisusb, SISCR, 0x0e, 0x00))
  return;
 sisusb_setidxreg(sisusb, SISCR, 0x0f, 0x00);
}
