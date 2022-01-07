
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct max17042_config_data {int fullcap; int design_cap; int fullcapnom; } ;
struct max17042_chip {struct regmap* regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {struct max17042_config_data* config_data; } ;


 int MAX17042_DesignCap ;
 int MAX17042_FullCAP ;
 int MAX17042_FullCAP0 ;
 int MAX17042_FullCAPNom ;
 int MAX17042_RemCap ;
 int MAX17042_RepCap ;
 int MAX17042_RepSOC ;
 int MAX17042_VFSOC ;
 int MAX17042_dPacc ;
 int MAX17042_dQacc ;
 int dP_ACC_200 ;
 int dQ_ACC_DIV ;
 int max17042_write_verify_reg (struct regmap*,int ,int) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void max17042_load_new_capacity_params(struct max17042_chip *chip)
{
 u32 full_cap0, rep_cap, dq_acc, vfSoc;
 u32 rem_cap;

 struct max17042_config_data *config = chip->pdata->config_data;
 struct regmap *map = chip->regmap;

 regmap_read(map, MAX17042_FullCAP0, &full_cap0);
 regmap_read(map, MAX17042_VFSOC, &vfSoc);





 rem_cap = ((vfSoc >> 8) * full_cap0) / 100;
 max17042_write_verify_reg(map, MAX17042_RemCap, rem_cap);

 rep_cap = rem_cap;
 max17042_write_verify_reg(map, MAX17042_RepCap, rep_cap);


 dq_acc = config->fullcap / dQ_ACC_DIV;
 max17042_write_verify_reg(map, MAX17042_dQacc, dq_acc);
 max17042_write_verify_reg(map, MAX17042_dPacc, dP_ACC_200);

 max17042_write_verify_reg(map, MAX17042_FullCAP,
   config->fullcap);
 regmap_write(map, MAX17042_DesignCap,
   config->design_cap);
 max17042_write_verify_reg(map, MAX17042_FullCAPNom,
   config->fullcapnom);

 regmap_write(map, MAX17042_RepSOC, vfSoc);
}
