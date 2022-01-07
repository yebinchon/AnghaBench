
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cw1200_common {TYPE_1__* rates; } ;
struct TYPE_2__ {int hw_value; } ;


 int BIT (int) ;

u32 cw1200_rate_mask_to_wsm(struct cw1200_common *priv, u32 rates)
{
 u32 ret = 0;
 int i;
 for (i = 0; i < 32; ++i) {
  if (rates & BIT(i))
   ret |= BIT(priv->rates[i].hw_value);
 }
 return ret;
}
