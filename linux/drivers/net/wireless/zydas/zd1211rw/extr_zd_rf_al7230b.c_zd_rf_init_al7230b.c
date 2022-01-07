
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int patch_cck_gain; int switch_radio_off; int patch_6m_band_edge; int set_channel; int switch_radio_on; int init_hw; } ;
struct zd_chip {int dummy; } ;


 int al7230b_switch_radio_off ;
 int zd1211_al7230b_init_hw ;
 int zd1211_al7230b_set_channel ;
 int zd1211_al7230b_switch_radio_on ;
 int zd1211b_al7230b_init_hw ;
 int zd1211b_al7230b_patch_6m ;
 int zd1211b_al7230b_set_channel ;
 int zd1211b_al7230b_switch_radio_on ;
 scalar_t__ zd_chip_is_zd1211b (struct zd_chip*) ;
 int zd_rf_generic_patch_6m ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

int zd_rf_init_al7230b(struct zd_rf *rf)
{
 struct zd_chip *chip = zd_rf_to_chip(rf);

 if (zd_chip_is_zd1211b(chip)) {
  rf->init_hw = zd1211b_al7230b_init_hw;
  rf->switch_radio_on = zd1211b_al7230b_switch_radio_on;
  rf->set_channel = zd1211b_al7230b_set_channel;
  rf->patch_6m_band_edge = zd1211b_al7230b_patch_6m;
 } else {
  rf->init_hw = zd1211_al7230b_init_hw;
  rf->switch_radio_on = zd1211_al7230b_switch_radio_on;
  rf->set_channel = zd1211_al7230b_set_channel;
  rf->patch_6m_band_edge = zd_rf_generic_patch_6m;
  rf->patch_cck_gain = 1;
 }

 rf->switch_radio_off = al7230b_switch_radio_off;

 return 0;
}
