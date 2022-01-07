
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int dummy; } ;


 int ULPI_SET (int ) ;
 int twl4030_usb_write (struct twl4030_usb*,int ,int ) ;

__attribute__((used)) static inline int
twl4030_usb_set_bits(struct twl4030_usb *twl, u8 reg, u8 bits)
{
 return twl4030_usb_write(twl, ULPI_SET(reg), bits);
}
