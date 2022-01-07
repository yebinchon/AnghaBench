
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int member_0; } ;
struct zd_chip {int dummy; } ;
struct TYPE_2__ {int config; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 size_t CHAN_TO_PAIRIDX (int ) ;
 int UW2453_AUTOCAL_VCO_CFG ;
 TYPE_1__* UW2453_PRIV (struct zd_rf*) ;

 int ZD_CR203 ;





 int uw2453_init_mode (struct zd_chip*) ;
 int uw2453_set_tx_gain_level (struct zd_chip*,int ) ;
 int ** uw2453_std_vco_cfg ;
 int uw2453_synth_set_channel (struct zd_chip*,int ,int) ;
 int uw2453_write_vco_cfg (struct zd_chip*,int ) ;
 int zd_iowrite16_locked (struct zd_chip*,int,int ) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;
 struct zd_chip* zd_rf_to_chip (struct zd_rf*) ;

__attribute__((used)) static int uw2453_set_channel(struct zd_rf *rf, u8 channel)
{
 int r;
 u16 vco_cfg;
 int config = UW2453_PRIV(rf)->config;
 bool autocal = (config == -1);
 struct zd_chip *chip = zd_rf_to_chip(rf);

 static const struct zd_ioreq16 ioreqs[] = {
  { 129, 0x30 }, { 128, 0x30 }, { 130, 0x58 },
  { 133, 0xf0 }, { 132, 0x1b }, { 131, 0x58 },
 };

 r = uw2453_synth_set_channel(chip, channel, autocal);
 if (r)
  return r;

 if (autocal)
  vco_cfg = UW2453_AUTOCAL_VCO_CFG;
 else
  vco_cfg = uw2453_std_vco_cfg[config][CHAN_TO_PAIRIDX(channel)];

 r = uw2453_write_vco_cfg(chip, vco_cfg);
 if (r)
  return r;

 r = uw2453_init_mode(chip);
 if (r)
  return r;

 r = zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
 if (r)
  return r;

 r = uw2453_set_tx_gain_level(chip, channel);
 if (r)
  return r;

 return zd_iowrite16_locked(chip, 0x06, ZD_CR203);
}
