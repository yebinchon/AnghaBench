
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq16 {int member_1; int value; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16*) ;
 int ZD_CR128 ;
 int ZD_CR129 ;
 int ZD_CR130 ;
 int ZD_CR47 ;
 int dev_dbg_f (int ,char*,int) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16*,int ) ;

int zd_chip_generic_patch_6m_band(struct zd_chip *chip, int channel)
{
 struct zd_ioreq16 ioreqs[] = {
  { ZD_CR128, 0x14 }, { ZD_CR129, 0x12 }, { ZD_CR130, 0x10 },
  { ZD_CR47, 0x1e },
 };


 if (channel == 1 || channel == 11)
  ioreqs[0].value = 0x12;

 dev_dbg_f(zd_chip_dev(chip), "patching for channel %d\n", channel);
 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
