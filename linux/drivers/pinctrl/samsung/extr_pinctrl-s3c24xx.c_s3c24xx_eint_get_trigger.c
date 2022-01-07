
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINT_EDGE_BOTH ;
 int EINT_EDGE_FALLING ;
 int EINT_EDGE_RISING ;
 int EINT_LEVEL_HIGH ;
 int EINT_LEVEL_LOW ;
 int EINVAL ;






__attribute__((used)) static int s3c24xx_eint_get_trigger(unsigned int type)
{
 switch (type) {
 case 130:
  return EINT_EDGE_RISING;
  break;
 case 131:
  return EINT_EDGE_FALLING;
  break;
 case 132:
  return EINT_EDGE_BOTH;
  break;
 case 129:
  return EINT_LEVEL_HIGH;
  break;
 case 128:
  return EINT_LEVEL_LOW;
  break;
 default:
  return -EINVAL;
 }
}
