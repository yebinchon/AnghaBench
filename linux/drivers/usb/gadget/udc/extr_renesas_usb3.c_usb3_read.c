
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct renesas_usb3 {scalar_t__ reg; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static u32 usb3_read(struct renesas_usb3 *usb3, u32 offs)
{
 return ioread32(usb3->reg + offs);
}
