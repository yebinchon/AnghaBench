
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
struct zd_chip {int * ofdm_cal_values; } ;





 int E2P_CHANNEL_COUNT ;
 int read_values (struct zd_chip*,int ,int ,int const,int ) ;

__attribute__((used)) static int read_ofdm_cal_values(struct zd_chip *chip)
{
 int r;
 int i;
 static const zd_addr_t addresses[] = {
  130,
  129,
  128,
 };

 for (i = 0; i < 3; i++) {
  r = read_values(chip, chip->ofdm_cal_values[i],
    E2P_CHANNEL_COUNT, addresses[i], 0);
  if (r)
   return r;
 }
 return 0;
}
