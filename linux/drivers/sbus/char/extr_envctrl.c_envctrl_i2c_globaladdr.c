
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_child_t {int dummy; } ;


 unsigned char ENVCTRL_GLOBALADDR_ADDR_MASK ;

__attribute__((used)) static int envctrl_i2c_globaladdr(struct i2c_child_t *pchild,
      unsigned char data,
      char *bufdata)
{
 bufdata[0] = (data & ENVCTRL_GLOBALADDR_ADDR_MASK);
 return 1;
}
