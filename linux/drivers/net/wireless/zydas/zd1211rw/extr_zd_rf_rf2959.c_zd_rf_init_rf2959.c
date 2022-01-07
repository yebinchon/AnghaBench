
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int switch_radio_off; int switch_radio_on; int set_channel; int init_hw; } ;
struct zd_chip {int dummy; } ;


 int ENODEV ;
 int dev_err (int ,char*) ;
 int rf2959_init_hw ;
 int rf2959_set_channel ;
 int rf2959_switch_radio_off ;
 int rf2959_switch_radio_on ;
 int zd_chip_dev (struct zd_chip*) ;
 scalar_t__ zd_chip_is_zd1211b (struct zd_chip*) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

int zd_rf_init_rf2959(struct zd_rf *rf)
{
 struct zd_chip *chip = zd_rf_to_chip(rf);

 if (zd_chip_is_zd1211b(chip)) {
  dev_err(zd_chip_dev(chip),
         "RF2959 is currently not supported for ZD1211B"
         " devices\n");
  return -ENODEV;
 }
 rf->init_hw = rf2959_init_hw;
 rf->set_channel = rf2959_set_channel;
 rf->switch_radio_on = rf2959_switch_radio_on;
 rf->switch_radio_off = rf2959_switch_radio_off;
 return 0;
}
