
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct max17042_config_data {int qrtbl30; int qrtbl20; int qrtbl10; int qrtbl00; int kempty0; int empty_tempco; int ichgt_term; int tcompc0; int rcomp0; } ;
struct max17042_chip {scalar_t__ chip_type; struct regmap* regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {struct max17042_config_data* config_data; } ;


 int MAX17042_EmptyTempCo ;
 int MAX17042_ICHGTerm ;
 int MAX17042_K_empty0 ;
 int MAX17042_RCOMP0 ;
 int MAX17042_TempCo ;
 int MAX17047_QRTbl00 ;
 int MAX17047_QRTbl10 ;
 int MAX17047_QRTbl20 ;
 int MAX17047_QRTbl30 ;
 scalar_t__ MAXIM_DEVICE_TYPE_MAX17042 ;
 int max17042_write_verify_reg (struct regmap*,int ,int ) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void max17042_write_custom_regs(struct max17042_chip *chip)
{
 struct max17042_config_data *config = chip->pdata->config_data;
 struct regmap *map = chip->regmap;

 max17042_write_verify_reg(map, MAX17042_RCOMP0, config->rcomp0);
 max17042_write_verify_reg(map, MAX17042_TempCo, config->tcompc0);
 max17042_write_verify_reg(map, MAX17042_ICHGTerm, config->ichgt_term);
 if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17042) {
  regmap_write(map, MAX17042_EmptyTempCo, config->empty_tempco);
  max17042_write_verify_reg(map, MAX17042_K_empty0,
     config->kempty0);
 } else {
  max17042_write_verify_reg(map, MAX17047_QRTbl00,
      config->qrtbl00);
  max17042_write_verify_reg(map, MAX17047_QRTbl10,
      config->qrtbl10);
  max17042_write_verify_reg(map, MAX17047_QRTbl20,
      config->qrtbl20);
  max17042_write_verify_reg(map, MAX17047_QRTbl30,
      config->qrtbl30);
 }
}
