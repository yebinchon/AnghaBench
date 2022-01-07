
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ltc294x_info {scalar_t__ Qlsb; int client; } ;
typedef int s32 ;


 int EINVAL ;
 int I16_LSB (int) ;
 int I16_MSB (int) ;
 int LTC294X_REG_ACC_CHARGE_MSB ;
 int LTC294X_REG_CONTROL ;
 int LTC294X_REG_CONTROL_SHUTDOWN_MASK ;
 int convert_uAh_to_bin (struct ltc294x_info const*,int) ;
 int ltc294x_read_regs (int ,int ,int *,int) ;
 int ltc294x_write_regs (int ,int ,int *,int) ;

__attribute__((used)) static int ltc294x_set_charge_now(const struct ltc294x_info *info, int val)
{
 int ret;
 u8 dataw[2];
 u8 ctrl_reg;
 s32 value;

 value = convert_uAh_to_bin(info, val);

 if (info->Qlsb < 0)
  value += 0xFFFF;
 if ((value < 0) || (value > 0xFFFF))
  return -EINVAL;


 ret = ltc294x_read_regs(info->client,
  LTC294X_REG_CONTROL, &ctrl_reg, 1);
 if (ret < 0)
  return ret;

 ctrl_reg |= LTC294X_REG_CONTROL_SHUTDOWN_MASK;
 ret = ltc294x_write_regs(info->client,
  LTC294X_REG_CONTROL, &ctrl_reg, 1);
 if (ret < 0)
  return ret;

 dataw[0] = I16_MSB(value);
 dataw[1] = I16_LSB(value);
 ret = ltc294x_write_regs(info->client,
  LTC294X_REG_ACC_CHARGE_MSB, &dataw[0], 2);
 if (ret < 0)
  goto error_exit;

error_exit:
 ctrl_reg &= ~LTC294X_REG_CONTROL_SHUTDOWN_MASK;
 ret = ltc294x_write_regs(info->client,
  LTC294X_REG_CONTROL, &ctrl_reg, 1);

 return ret < 0 ? ret : 0;
}
