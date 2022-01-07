
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_rate_power {int* all; } ;
typedef int s8 ;


 int min (int,int) ;

__attribute__((used)) static int
mt76x2_get_min_rate_power(struct mt76_rate_power *r)
{
 int i;
 s8 ret = 0;

 for (i = 0; i < sizeof(r->all); i++) {
  if (!r->all[i])
   continue;

  if (ret)
   ret = min(ret, r->all[i]);
  else
   ret = r->all[i];
 }

 return ret;
}
