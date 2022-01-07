
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 int RF_RV_BITS ;


 int ** zd1211_al2230_table ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwritev_locked (struct zd_chip*,int const*,int,int ) ;

__attribute__((used)) static int zd1211_al2230_set_channel(struct zd_rf *rf, u8 channel)
{
 int r;
 const u32 *rv = zd1211_al2230_table[channel-1];
 struct zd_chip *chip = zd_rf_to_chip(rf);
 static const struct zd_ioreq16 ioreqs[] = {
  { 129, 0x28 },
  { 128, 0x06 },
 };

 r = zd_rfwritev_locked(chip, rv, 3, RF_RV_BITS);
 if (r)
  return r;
 return zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
}
