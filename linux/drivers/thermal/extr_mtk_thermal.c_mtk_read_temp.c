
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_thermal_bank {int dummy; } ;
struct mtk_thermal {struct mtk_thermal_bank* banks; TYPE_1__* conf; } ;
struct TYPE_2__ {int num_banks; } ;


 int INT_MIN ;
 int max (int,int ) ;
 int mtk_thermal_bank_temperature (struct mtk_thermal_bank*) ;
 int mtk_thermal_get_bank (struct mtk_thermal_bank*) ;
 int mtk_thermal_put_bank (struct mtk_thermal_bank*) ;

__attribute__((used)) static int mtk_read_temp(void *data, int *temperature)
{
 struct mtk_thermal *mt = data;
 int i;
 int tempmax = INT_MIN;

 for (i = 0; i < mt->conf->num_banks; i++) {
  struct mtk_thermal_bank *bank = &mt->banks[i];

  mtk_thermal_get_bank(bank);

  tempmax = max(tempmax, mtk_thermal_bank_temperature(bank));

  mtk_thermal_put_bank(bank);
 }

 *temperature = tempmax;

 return 0;
}
