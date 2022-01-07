
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int MCP16502_OPMODE_ACTIVE ;
 int _mcp16502_set_mode (struct regulator_dev*,unsigned int,int ) ;

__attribute__((used)) static int mcp16502_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 return _mcp16502_set_mode(rdev, mode, MCP16502_OPMODE_ACTIVE);
}
