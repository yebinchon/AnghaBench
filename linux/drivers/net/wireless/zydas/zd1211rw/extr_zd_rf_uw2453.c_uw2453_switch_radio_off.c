
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 int RF_RV_BITS ;
 int UW2453_REGWRITE (int ,int) ;


 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwrite_locked (struct zd_chip*,int ,int ) ;

__attribute__((used)) static int uw2453_switch_radio_off(struct zd_rf *rf)
{
 int r;
 struct zd_chip *chip = zd_rf_to_chip(rf);
 static const struct zd_ioreq16 ioreqs[] = {
  { 129, 0x04 }, { 128, 0x2f },
 };



 r = zd_rfwrite_locked(chip, UW2453_REGWRITE(0, 0x25f90), RF_RV_BITS);
 if (r)
  return r;

 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
