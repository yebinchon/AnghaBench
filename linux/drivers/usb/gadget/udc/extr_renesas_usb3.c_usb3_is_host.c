
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int DRD_CON_PERI_CON ;
 int USB3_DRD_CON ;
 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static bool usb3_is_host(struct renesas_usb3 *usb3)
{
 return !(usb3_read(usb3, USB3_DRD_CON) & DRD_CON_PERI_CON);
}
