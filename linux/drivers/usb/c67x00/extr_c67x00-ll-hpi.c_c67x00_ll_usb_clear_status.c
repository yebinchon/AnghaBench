
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c67x00_sie {int sie_num; int dev; } ;


 int USB_STAT_REG (int ) ;
 int hpi_write_word (int ,int ,int ) ;

void c67x00_ll_usb_clear_status(struct c67x00_sie *sie, u16 bits)
{
 hpi_write_word(sie->dev, USB_STAT_REG(sie->sie_num), bits);
}
