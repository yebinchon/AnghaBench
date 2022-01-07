
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int dummy; } ;
typedef enum bq2415x_command { ____Placeholder_bq2415x_command } bq2415x_command ;


 int BQ2415X_BIT_BOOST ;
 int BQ2415X_BIT_CE ;
 int BQ2415X_BIT_EN_STAT ;
 int BQ2415X_BIT_HZ_MODE ;
 int BQ2415X_BIT_OPA_MODE ;
 int BQ2415X_BIT_OTG ;
 int BQ2415X_BIT_OTG_EN ;
 int BQ2415X_BIT_OTG_PL ;
 int BQ2415X_BIT_TE ;
 int BQ2415X_BIT_TMR_RST ;
 int BQ2415X_MASK_FAULT ;
 int BQ2415X_MASK_PN ;
 int BQ2415X_MASK_REVISION ;
 int BQ2415X_MASK_STAT ;
 int BQ2415X_MASK_VENDER ;
 int BQ2415X_REG_CONTROL ;
 int BQ2415X_REG_STATUS ;
 int BQ2415X_REG_VENDER ;
 int BQ2415X_REG_VOLTAGE ;

 int BQ2415X_SHIFT_FAULT ;
 int BQ2415X_SHIFT_PN ;
 int BQ2415X_SHIFT_REVISION ;
 int BQ2415X_SHIFT_STAT ;
 int BQ2415X_SHIFT_VENDER ;





 int EINVAL ;
 int bq2415x_i2c_read_bit (struct bq2415x_device*,int ,int ) ;
 int bq2415x_i2c_read_mask (struct bq2415x_device*,int ,int ,int ) ;
 int bq2415x_i2c_write_bit (struct bq2415x_device*,int ,int,int ) ;

__attribute__((used)) static int bq2415x_exec_command(struct bq2415x_device *bq,
    enum bq2415x_command command)
{
 int ret;

 switch (command) {
 case 129:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_STATUS,
    1, BQ2415X_BIT_TMR_RST);
 case 135:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_STATUS,
    BQ2415X_BIT_OTG);
 case 130:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_STATUS,
    BQ2415X_BIT_EN_STAT);
 case 131:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_STATUS, 1,
    BQ2415X_BIT_EN_STAT);
 case 132:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_STATUS, 0,
    BQ2415X_BIT_EN_STAT);
 case 149:
  return bq2415x_i2c_read_mask(bq, BQ2415X_REG_STATUS,
    BQ2415X_MASK_STAT, BQ2415X_SHIFT_STAT);
 case 153:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_STATUS,
    BQ2415X_BIT_BOOST);
 case 145:
  return bq2415x_i2c_read_mask(bq, BQ2415X_REG_STATUS,
   BQ2415X_MASK_FAULT, BQ2415X_SHIFT_FAULT);

 case 146:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_CONTROL,
    BQ2415X_BIT_TE);
 case 147:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    1, BQ2415X_BIT_TE);
 case 148:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    0, BQ2415X_BIT_TE);
 case 150:
  ret = bq2415x_i2c_read_bit(bq, BQ2415X_REG_CONTROL,
   BQ2415X_BIT_CE);
  if (ret < 0)
   return ret;
  return ret > 0 ? 0 : 1;
 case 151:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    0, BQ2415X_BIT_CE);
 case 152:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    1, BQ2415X_BIT_CE);
 case 142:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_CONTROL,
    BQ2415X_BIT_HZ_MODE);
 case 143:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    1, BQ2415X_BIT_HZ_MODE);
 case 144:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    0, BQ2415X_BIT_HZ_MODE);
 case 154:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_CONTROL,
    BQ2415X_BIT_OPA_MODE);
 case 155:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    1, BQ2415X_BIT_OPA_MODE);
 case 156:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_CONTROL,
    0, BQ2415X_BIT_OPA_MODE);

 case 139:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_VOLTAGE,
    BQ2415X_BIT_OTG_PL);
 case 141:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_VOLTAGE,
    1, BQ2415X_BIT_OTG_PL);
 case 140:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_VOLTAGE,
    0, BQ2415X_BIT_OTG_PL);
 case 136:
  return bq2415x_i2c_read_bit(bq, BQ2415X_REG_VOLTAGE,
    BQ2415X_BIT_OTG_EN);
 case 137:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_VOLTAGE,
    1, BQ2415X_BIT_OTG_EN);
 case 138:
  return bq2415x_i2c_write_bit(bq, BQ2415X_REG_VOLTAGE,
    0, BQ2415X_BIT_OTG_EN);

 case 128:
  return bq2415x_i2c_read_mask(bq, BQ2415X_REG_VENDER,
   BQ2415X_MASK_VENDER, BQ2415X_SHIFT_VENDER);
 case 134:
  return bq2415x_i2c_read_mask(bq, BQ2415X_REG_VENDER,
    BQ2415X_MASK_PN, BQ2415X_SHIFT_PN);
 case 133:
  return bq2415x_i2c_read_mask(bq, BQ2415X_REG_VENDER,
   BQ2415X_MASK_REVISION, BQ2415X_SHIFT_REVISION);
 }
 return -EINVAL;
}
