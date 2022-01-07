
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_ioreq16 {int member_1; int const member_0; } ;
struct zd_chip {int rf; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;

 int update_ofdm_cal (struct zd_chip*,int ) ;
 int update_pwr_cal (struct zd_chip*,int ) ;
 int update_pwr_int (struct zd_chip*,int ) ;
 scalar_t__ zd_chip_is_zd1211b (struct zd_chip*) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;
 int zd_rf_should_update_pwr_int (int *) ;

__attribute__((used)) static int update_channel_integration_and_calibration(struct zd_chip *chip,
                                               u8 channel)
{
 int r;

 if (!zd_rf_should_update_pwr_int(&chip->rf))
  return 0;

 r = update_pwr_int(chip, channel);
 if (r)
  return r;
 if (zd_chip_is_zd1211b(chip)) {
  static const struct zd_ioreq16 ioreqs[] = {
   { 128, 0x28 },
   {},
   { 128, 0x2a },
  };

  r = update_ofdm_cal(chip, channel);
  if (r)
   return r;
  r = update_pwr_cal(chip, channel);
  if (r)
   return r;
  r = zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
  if (r)
   return r;
 }

 return 0;
}
