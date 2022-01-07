
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_thermal_data {TYPE_1__* bank_data; scalar_t__* msr; } ;
struct mtk_thermal_bank {size_t id; struct mtk_thermal* mt; } ;
struct mtk_thermal {scalar_t__ thermal_base; struct mtk_thermal_data* conf; } ;
struct TYPE_2__ {int num_sensors; size_t* sensors; } ;


 int INT_MIN ;
 int raw_to_mcelsius (struct mtk_thermal*,size_t,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
{
 struct mtk_thermal *mt = bank->mt;
 const struct mtk_thermal_data *conf = mt->conf;
 int i, temp = INT_MIN, max = INT_MIN;
 u32 raw;

 for (i = 0; i < conf->bank_data[bank->id].num_sensors; i++) {
  raw = readl(mt->thermal_base +
       conf->msr[conf->bank_data[bank->id].sensors[i]]);

  temp = raw_to_mcelsius(mt,
           conf->bank_data[bank->id].sensors[i],
           raw);






  if (temp > 200000)
   temp = 0;

  if (temp > max)
   max = temp;
 }

 return max;
}
