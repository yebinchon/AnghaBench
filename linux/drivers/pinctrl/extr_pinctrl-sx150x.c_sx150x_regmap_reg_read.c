
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx150x_pinctrl {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,unsigned int) ;
 unsigned int sx150x_maybe_swizzle (struct sx150x_pinctrl*,unsigned int,unsigned int) ;
 int sx150x_regmap_reg_width (struct sx150x_pinctrl*,unsigned int) ;

__attribute__((used)) static int sx150x_regmap_reg_read(void *context, unsigned int reg,
      unsigned int *result)
{
 int ret, n;
 struct sx150x_pinctrl *pctl = context;
 struct i2c_client *i2c = pctl->client;
 const int width = sx150x_regmap_reg_width(pctl, reg);
 unsigned int idx, val;
 for (n = width, val = 0, idx = reg; n > 0; n -= 8, idx++) {
  val <<= 8;

  ret = i2c_smbus_read_byte_data(i2c, idx);
  if (ret < 0)
   return ret;

  val |= ret;
 }

 *result = sx150x_maybe_swizzle(pctl, reg, val);

 return 0;
}
