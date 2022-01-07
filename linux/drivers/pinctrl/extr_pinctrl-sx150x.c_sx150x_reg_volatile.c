
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_1__* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int reg_irq_src; unsigned int reg_data; } ;


 struct sx150x_pinctrl* i2c_get_clientdata (int ) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static bool sx150x_reg_volatile(struct device *dev, unsigned int reg)
{
 struct sx150x_pinctrl *pctl = i2c_get_clientdata(to_i2c_client(dev));

 return reg == pctl->data->reg_irq_src || reg == pctl->data->reg_data;
}
