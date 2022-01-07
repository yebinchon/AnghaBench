
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct mcp23s08 {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;
 int MCP_GPPU ;

 int dev_dbg (int ,char*,int) ;
 int mcp_set_bit (struct mcp23s08*,int ,unsigned int,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct mcp23s08* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mcp_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
         unsigned long *configs, unsigned int num_configs)
{
 struct mcp23s08 *mcp = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 u32 arg;
 int ret = 0;
 int i;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 128:
   ret = mcp_set_bit(mcp, MCP_GPPU, pin, arg);
   break;
  default:
   dev_dbg(mcp->dev, "Invalid config param %04x\n", param);
   return -ENOTSUPP;
  }
 }

 return ret;
}
