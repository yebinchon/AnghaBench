
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u16 ;
struct zd_chip {int usb; int mutex; } ;


 int ZD_ASSERT (int ) ;
 int mutex_is_locked (int *) ;
 int zd_usb_ioread16 (int *,int *,int const) ;

__attribute__((used)) static inline int zd_ioread16_locked(struct zd_chip *chip, u16 *value,
                              const zd_addr_t addr)
{
 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 return zd_usb_ioread16(&chip->usb, value, addr);
}
