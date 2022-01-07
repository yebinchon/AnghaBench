
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;


 unsigned int MCP16502_MODE ;


 int MCP16502_OPMODE_ACTIVE ;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_INVALID ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int mcp16502_get_reg (struct regulator_dev*,int ) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static unsigned int mcp16502_get_mode(struct regulator_dev *rdev)
{
 unsigned int val;
 int ret, reg;

 reg = mcp16502_get_reg(rdev, MCP16502_OPMODE_ACTIVE);
 if (reg < 0)
  return reg;

 ret = regmap_read(rdev->regmap, reg, &val);
 if (ret)
  return ret;

 switch (val & MCP16502_MODE) {
 case 128:
  return REGULATOR_MODE_NORMAL;
 case 129:
  return REGULATOR_MODE_IDLE;
 default:
  return REGULATOR_MODE_INVALID;
 }
}
