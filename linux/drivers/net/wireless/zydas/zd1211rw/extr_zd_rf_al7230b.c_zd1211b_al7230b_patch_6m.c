
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int value; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16*) ;
 int ZD_CR128 ;
 int ZD_CR129 ;
 int dev_dbg_f (int ,char*,int) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

__attribute__((used)) static int zd1211b_al7230b_patch_6m(struct zd_rf *rf, u8 channel)
{
 struct zd_chip *chip = zd_rf_to_chip(rf);
 struct zd_ioreq16 ioreqs[] = {
  { ZD_CR128, 0x14 }, { ZD_CR129, 0x12 },
 };


 if (channel == 1) {
  ioreqs[0].value = 0x0e;
  ioreqs[1].value = 0x10;
 } else if (channel == 11) {
  ioreqs[0].value = 0x10;
  ioreqs[1].value = 0x10;
 }

 dev_dbg_f(zd_chip_dev(chip), "patching for channel %d\n", channel);
 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
