
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ltc294x_info {int client; } ;
typedef enum ltc294x_reg { ____Placeholder_ltc294x_reg } ltc294x_reg ;


 int ltc294x_read_regs (int ,int,int*,int) ;

__attribute__((used)) static int ltc294x_read_charge_register(const struct ltc294x_info *info,
     enum ltc294x_reg reg)
 {
 int ret;
 u8 datar[2];

 ret = ltc294x_read_regs(info->client, reg, &datar[0], 2);
 if (ret < 0)
  return ret;
 return (datar[0] << 8) + datar[1];
}
