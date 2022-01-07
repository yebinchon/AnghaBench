
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zd_rf {int dummy; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int zd1211b_al2230_finalize_rf (struct zd_chip*) ;
 int ** zd1211b_al2230_table ;
 int zd1211b_ioreqs_shared_1 ;
 int zd_iowrite16a_locked (struct zd_chip*,int ,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;
 int zd_rfwritev_cr_locked (struct zd_chip*,int const*,int) ;

__attribute__((used)) static int zd1211b_al2230_set_channel(struct zd_rf *rf, u8 channel)
{
 int r;
 const u32 *rv = zd1211b_al2230_table[channel-1];
 struct zd_chip *chip = zd_rf_to_chip(rf);

 r = zd_iowrite16a_locked(chip, zd1211b_ioreqs_shared_1,
  ARRAY_SIZE(zd1211b_ioreqs_shared_1));
 if (r)
  return r;

 r = zd_rfwritev_cr_locked(chip, rv, 3);
 if (r)
  return r;

 return zd1211b_al2230_finalize_rf(chip);
}
