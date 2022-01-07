
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq16 {int member_1; int member_0; } ;
struct zd_chip {scalar_t__ new_phy_layout; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 int const ZD_CR9 ;
 int zd_iowrite16_locked (struct zd_chip*,int,int const) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;

__attribute__((used)) static int zd1211b_al7230b_finalize(struct zd_chip *chip)
{
 int r;
 static const struct zd_ioreq16 ioreqs[] = {
  { 129, 0x30 }, { 128, 0x30 }, { 130, 0x58 },
  { 135, 0xf0 }, { 132, 0x1b }, { 131, 0x58 },
  { 134, 0x04 },
  { },
  { 133, 0x80 },
 };

 r = zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
 if (r)
  return r;

 if (chip->new_phy_layout) {

  r = zd_iowrite16_locked(chip, 0xe5, ZD_CR9);
  if (r)
   return r;
 }

 return zd_iowrite16_locked(chip, 0x04, 134);
}
