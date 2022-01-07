
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_pwm_chip {int regmap; } ;


 int FTM_FMS ;
 int FTM_FMS_WPEN ;
 int FTM_MODE ;
 int FTM_MODE_WPDIS ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ftm_clear_write_protection(struct fsl_pwm_chip *fpc)
{
 u32 val;

 regmap_read(fpc->regmap, FTM_FMS, &val);
 if (val & FTM_FMS_WPEN)
  regmap_update_bits(fpc->regmap, FTM_MODE, FTM_MODE_WPDIS,
       FTM_MODE_WPDIS);
}
