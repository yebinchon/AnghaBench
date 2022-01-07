
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct da9055_regulator_info {TYPE_1__ reg_desc; } ;


 int ARRAY_SIZE (struct da9055_regulator_info*) ;
 struct da9055_regulator_info* da9055_regulator_info ;

__attribute__((used)) static inline struct da9055_regulator_info *find_regulator_info(int id)
{
 struct da9055_regulator_info *info;
 int i;

 for (i = 0; i < ARRAY_SIZE(da9055_regulator_info); i++) {
  info = &da9055_regulator_info[i];
  if (info->reg_desc.id == id)
   return info;
 }

 return ((void*)0);
}
