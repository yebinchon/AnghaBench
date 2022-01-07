
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct renesas_usb3 {scalar_t__ reg; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void usb3_write(struct renesas_usb3 *usb3, u32 data, u32 offs)
{
 iowrite32(data, usb3->reg + offs);
}
