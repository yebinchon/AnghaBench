
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_ioreq16 {int member_1; int member_0; } ;
struct zd_chip {int mutex; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 int ZD_ASSERT (int ) ;
 int ZD_CR242 ;
 int ZD_CR243 ;
 int ZD_CR244 ;
 int mutex_is_locked (int *) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;

int zd_rfwrite_cr_locked(struct zd_chip *chip, u32 value)
{
 const struct zd_ioreq16 ioreqs[] = {
  { ZD_CR244, (value >> 16) & 0xff },
  { ZD_CR243, (value >> 8) & 0xff },
  { ZD_CR242, value & 0xff },
 };
 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
