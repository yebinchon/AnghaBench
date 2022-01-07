
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int patch_cck_gain; int patch_6m_band_edge; int switch_radio_on; int set_channel; int init_hw; int switch_radio_off; } ;
struct zd_chip {int dummy; } ;


 int al2230_switch_radio_off ;
 int zd1211_al2230_init_hw ;
 int zd1211_al2230_set_channel ;
 int zd1211_al2230_switch_radio_on ;
 int zd1211b_al2230_init_hw ;
 int zd1211b_al2230_set_channel ;
 int zd1211b_al2230_switch_radio_on ;
 scalar_t__ zd_chip_is_zd1211b (struct zd_chip*) ;
 int zd_rf_generic_patch_6m ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

int zd_rf_init_al2230(struct zd_rf *rf)
{
 struct zd_chip *chip = zd_rf_to_chip(rf);

 rf->switch_radio_off = al2230_switch_radio_off;
 if (zd_chip_is_zd1211b(chip)) {
  rf->init_hw = zd1211b_al2230_init_hw;
  rf->set_channel = zd1211b_al2230_set_channel;
  rf->switch_radio_on = zd1211b_al2230_switch_radio_on;
 } else {
  rf->init_hw = zd1211_al2230_init_hw;
  rf->set_channel = zd1211_al2230_set_channel;
  rf->switch_radio_on = zd1211_al2230_switch_radio_on;
 }
 rf->patch_6m_band_edge = zd_rf_generic_patch_6m;
 rf->patch_cck_gain = 1;
 return 0;
}
