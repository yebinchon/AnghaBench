
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_pwm_chip {int regmap; } ;


 int FTM_FMS ;
 int FTM_FMS_WPEN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ftm_set_write_protection(struct fsl_pwm_chip *fpc)
{
 regmap_update_bits(fpc->regmap, FTM_FMS, FTM_FMS_WPEN, FTM_FMS_WPEN);
}
