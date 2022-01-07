
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int id; } ;
struct da9052_regulator_info {TYPE_1__ reg_desc; } ;


 int ARRAY_SIZE (struct da9052_regulator_info*) ;





 struct da9052_regulator_info* da9052_regulator_info ;
 struct da9052_regulator_info* da9053_regulator_info ;

__attribute__((used)) static inline struct da9052_regulator_info *find_regulator_info(u8 chip_id,
         int id)
{
 struct da9052_regulator_info *info;
 int i;

 switch (chip_id) {
 case 132:
  for (i = 0; i < ARRAY_SIZE(da9052_regulator_info); i++) {
   info = &da9052_regulator_info[i];
   if (info->reg_desc.id == id)
    return info;
  }
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  for (i = 0; i < ARRAY_SIZE(da9053_regulator_info); i++) {
   info = &da9053_regulator_info[i];
   if (info->reg_desc.id == id)
    return info;
  }
  break;
 }

 return ((void*)0);
}
