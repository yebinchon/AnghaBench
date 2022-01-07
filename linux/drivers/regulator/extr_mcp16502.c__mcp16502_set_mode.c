
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;


 int EINVAL ;
 int MCP16502_MODE ;
 int MCP16502_MODE_AUTO_PFM ;
 int MCP16502_MODE_FPWM ;


 int mcp16502_get_reg (struct regulator_dev*,unsigned int) ;
 int regmap_update_bits (int ,int,int ,int) ;

__attribute__((used)) static int _mcp16502_set_mode(struct regulator_dev *rdev, unsigned int mode,
         unsigned int op_mode)
{
 int val;
 int reg;

 reg = mcp16502_get_reg(rdev, op_mode);
 if (reg < 0)
  return reg;

 switch (mode) {
 case 128:
  val = MCP16502_MODE_FPWM;
  break;
 case 129:
  val = MCP16502_MODE_AUTO_PFM;
  break;
 default:
  return -EINVAL;
 }

 reg = regmap_update_bits(rdev->regmap, reg, MCP16502_MODE, val);
 return reg;
}
