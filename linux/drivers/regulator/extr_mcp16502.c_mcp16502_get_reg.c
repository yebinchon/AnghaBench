
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int MCP16502_BASE (int ) ;
 int MCP16502_OFFSET_MODE_A ;
 int MCP16502_OFFSET_MODE_HIB ;
 int MCP16502_OFFSET_MODE_LPM ;



 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int mcp16502_get_reg(struct regulator_dev *rdev, int opmode)
{
 int reg = MCP16502_BASE(rdev_get_id(rdev));

 switch (opmode) {
 case 130:
  return reg + MCP16502_OFFSET_MODE_A;
 case 128:
  return reg + MCP16502_OFFSET_MODE_LPM;
 case 129:
  return reg + MCP16502_OFFSET_MODE_HIB;
 default:
  return -EINVAL;
 }
}
