
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq32 {int member_1; int const member_0; } ;
struct zd_chip {int mutex; } ;


 int ARRAY_SIZE (struct zd_ioreq32 const*) ;
 int ZD_ASSERT (int ) ;
 int mutex_is_locked (int *) ;
 int zd1211_hw_init_hmac (struct zd_chip*) ;
 int zd1211b_hw_init_hmac (struct zd_chip*) ;
 scalar_t__ zd_chip_is_zd1211b (struct zd_chip*) ;
 int zd_iowrite32a_locked (struct zd_chip*,struct zd_ioreq32 const*,int ) ;

__attribute__((used)) static int hw_init_hmac(struct zd_chip *chip)
{
 int r;
 static const struct zd_ioreq32 ioreqs[] = {
  { 148, 0x20 },
  { 146, 0x30000808 },
  { 132, 0 },
  { 134, 128 },
  { 141, 0x00 },
  { 140, 0x80000000 },
  { 136, 0xa4 },
  { 145, 0x7f },
  { 143, 0x00f00401 },
  { 138, 0x00 },
  { 148, 0x80 },
  { 145, 0x00 },
  { 147, 0x100 },
  { 133, 0x70 },
  { 137, 0x10000000 },
  { 135, 0x02030203 },
  { 144, 0x1 },
  { 131, 0x114 },
  { 139, 130 },
  { 142, 129},
 };

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 r = zd_iowrite32a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
 if (r)
  return r;

 return zd_chip_is_zd1211b(chip) ?
  zd1211b_hw_init_hmac(chip) : zd1211_hw_init_hmac(chip);
}
