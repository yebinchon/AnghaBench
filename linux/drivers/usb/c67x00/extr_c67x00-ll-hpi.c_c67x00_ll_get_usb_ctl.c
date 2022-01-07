
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c67x00_sie {int sie_num; int dev; } ;


 int USB_CTL_REG (int ) ;
 int hpi_read_word (int ,int ) ;

u16 c67x00_ll_get_usb_ctl(struct c67x00_sie *sie)
{
 return hpi_read_word(sie->dev, USB_CTL_REG(sie->sie_num));
}
