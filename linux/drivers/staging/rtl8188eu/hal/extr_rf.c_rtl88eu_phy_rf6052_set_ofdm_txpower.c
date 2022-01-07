
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int odmpriv; } ;


 int get_rx_power_val_by_reg (struct adapter*,int,int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int getpowerbase88e (struct adapter*,int*,int*,int*,int,scalar_t__*,scalar_t__*) ;
 int rtl88eu_dm_txpower_track_adjust (int *,int ,int*,scalar_t__*) ;
 int write_ofdm_pwr_reg (struct adapter*,int,scalar_t__*) ;

void rtl88eu_phy_rf6052_set_ofdm_txpower(struct adapter *adapt,
      u8 *pwr_level_ofdm,
      u8 *pwr_level_bw20,
      u8 *pwr_level_bw40, u8 channel)
{
 u32 write_val[2], powerbase0[2], powerbase1[2], pwrtrac_value;
 u8 direction;
 u8 index = 0;

 getpowerbase88e(adapt, pwr_level_ofdm, pwr_level_bw20, pwr_level_bw40,
   channel, &powerbase0[0], &powerbase1[0]);

 rtl88eu_dm_txpower_track_adjust(&adapt->HalData->odmpriv, 0,
     &direction, &pwrtrac_value);

 for (index = 0; index < 6; index++) {
  get_rx_power_val_by_reg(adapt, channel, index,
     &powerbase0[0], &powerbase1[0],
     &write_val[0]);

  if (direction == 1) {
   write_val[0] += pwrtrac_value;
   write_val[1] += pwrtrac_value;
  } else if (direction == 2) {
   write_val[0] -= pwrtrac_value;
   write_val[1] -= pwrtrac_value;
  }
  write_ofdm_pwr_reg(adapt, index, &write_val[0]);
 }
}
