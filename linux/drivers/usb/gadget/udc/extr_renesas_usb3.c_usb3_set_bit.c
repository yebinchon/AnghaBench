
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int dummy; } ;


 int usb3_read (struct renesas_usb3*,int ) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_set_bit(struct renesas_usb3 *usb3, u32 bits, u32 offs)
{
 u32 val = usb3_read(usb3, offs);

 val |= bits;
 usb3_write(usb3, val, offs);
}
