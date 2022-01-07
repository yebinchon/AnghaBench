
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regmap; int dev; } ;


 int PFUZE100_SW1ABMODE ;
 int PFUZE100_SW1CMODE ;
 int PFUZE100_SW2MODE ;
 int PFUZE100_SW3AMODE ;
 int PFUZE100_SW3BMODE ;
 int PFUZE100_SW4MODE ;
 int PFUZE100_SWxMODE_APS_OFF ;
 int PFUZE100_SWxMODE_MASK ;
 int PFUZE100_VGEN1VOL ;
 int PFUZE100_VGEN2VOL ;
 int PFUZE100_VGEN3VOL ;
 int PFUZE100_VGEN4VOL ;
 int PFUZE100_VGEN5VOL ;
 int PFUZE100_VGEN6VOL ;
 int PFUZE100_VGENxLPWR ;
 int PFUZE100_VGENxSTBY ;
 int dev_info (int ,char*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 TYPE_1__* syspm_pfuze_chip ;

__attribute__((used)) static void pfuze_power_off_prepare(void)
{
 dev_info(syspm_pfuze_chip->dev, "Configure standby mode for power off");


 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_SW1ABMODE,
      PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_SW1CMODE,
      PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_SW2MODE,
      PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_SW3AMODE,
      PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_SW3BMODE,
      PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_SW4MODE,
      PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);

 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_VGEN1VOL,
      PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
      PFUZE100_VGENxSTBY);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_VGEN2VOL,
      PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
      PFUZE100_VGENxSTBY);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_VGEN3VOL,
      PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
      PFUZE100_VGENxSTBY);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_VGEN4VOL,
      PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
      PFUZE100_VGENxSTBY);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_VGEN5VOL,
      PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
      PFUZE100_VGENxSTBY);
 regmap_update_bits(syspm_pfuze_chip->regmap, PFUZE100_VGEN6VOL,
      PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
      PFUZE100_VGENxSTBY);
}
