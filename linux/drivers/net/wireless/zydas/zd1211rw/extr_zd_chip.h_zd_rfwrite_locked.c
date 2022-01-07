
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zd_chip {int usb; int mutex; } ;


 int ZD_ASSERT (int ) ;
 int mutex_is_locked (int *) ;
 int zd_usb_rfwrite (int *,int ,int ) ;

__attribute__((used)) static inline int zd_rfwrite_locked(struct zd_chip *chip, u32 value, u8 bits)
{
 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 return zd_usb_rfwrite(&chip->usb, value, bits);
}
