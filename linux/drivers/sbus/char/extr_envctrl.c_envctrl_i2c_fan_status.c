
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_child_t {unsigned char fan_mask; } ;


 unsigned char ENVCTRL_ALL_FANS_BAD ;
 unsigned char ENVCTRL_ALL_FANS_GOOD ;
 int PCF8584_MAX_CHANNELS ;
 int* chnls_mask ;

__attribute__((used)) static int envctrl_i2c_fan_status(struct i2c_child_t *pchild,
      unsigned char data,
      char *bufdata)
{
 unsigned char tmp, ret = 0;
 int i, j = 0;

 tmp = data & pchild->fan_mask;

 if (tmp == pchild->fan_mask) {

  ret = ENVCTRL_ALL_FANS_GOOD;
 } else if (tmp == 0) {

  ret = ENVCTRL_ALL_FANS_BAD;
 } else {






  for (i = 0; i < PCF8584_MAX_CHANNELS;i++) {
   if (pchild->fan_mask & chnls_mask[i]) {
    if (!(chnls_mask[i] & tmp))
     ret |= chnls_mask[j];

    j++;
   }
  }
 }

 bufdata[0] = ret;
 return 1;
}
