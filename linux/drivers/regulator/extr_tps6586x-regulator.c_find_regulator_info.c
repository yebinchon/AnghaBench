
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct tps6586x_regulator {TYPE_1__ desc; } ;


 int ARRAY_SIZE (struct tps6586x_regulator*) ;





 struct tps6586x_regulator* tps658623_regulator ;
 struct tps6586x_regulator* tps658640_regulator ;
 struct tps6586x_regulator* tps658643_regulator ;
 struct tps6586x_regulator* tps6586x_regulator ;

__attribute__((used)) static struct tps6586x_regulator *find_regulator_info(int id, int version)
{
 struct tps6586x_regulator *ri;
 struct tps6586x_regulator *table = ((void*)0);
 int num;
 int i;

 switch (version) {
 case 132:
 case 131:
  table = tps658623_regulator;
  num = ARRAY_SIZE(tps658623_regulator);
  break;
 case 130:
 case 129:
  table = tps658640_regulator;
  num = ARRAY_SIZE(tps658640_regulator);
  break;
 case 128:
  table = tps658643_regulator;
  num = ARRAY_SIZE(tps658643_regulator);
  break;
 }


 if (table) {
  for (i = 0; i < num; i++) {
   ri = &table[i];
   if (ri->desc.id == id)
    return ri;
  }
 }

 for (i = 0; i < ARRAY_SIZE(tps6586x_regulator); i++) {
  ri = &tps6586x_regulator[i];
  if (ri->desc.id == id)
   return ri;
 }
 return ((void*)0);
}
