
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u16 ;
struct zd_usb {int dummy; } ;


 int zd_usb_ioread16v (struct zd_usb*,int *,int const*,int) ;

__attribute__((used)) static inline int zd_usb_ioread16(struct zd_usb *usb, u16 *value,
                       const zd_addr_t addr)
{
 return zd_usb_ioread16v(usb, value, &addr, 1);
}
