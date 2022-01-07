
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int dummy; } ;


 int ARRAY_SIZE (int**) ;
 int EINVAL ;


 int** array_soc ;
 int calc_ocv (struct pm860x_battery_info*,int*) ;
 int measure_vbatt (struct pm860x_battery_info*,int const,int*) ;

__attribute__((used)) static int calc_soc(struct pm860x_battery_info *info, int state, int *soc)
{
 int i;
 int ocv;
 int count;
 int ret = -EINVAL;

 if (!soc)
  return -EINVAL;

 switch (state) {
 case 129:
  ret = calc_ocv(info, &ocv);
  break;
 case 128:
  ret = measure_vbatt(info, 128, &ocv);
  break;
 }
 if (ret)
  return ret;

 count = ARRAY_SIZE(array_soc);
 if (ocv < array_soc[count - 1][0]) {
  *soc = 0;
  return 0;
 }

 for (i = 0; i < count; i++) {
  if (ocv >= array_soc[i][0]) {
   *soc = array_soc[i][1];
   break;
  }
 }
 return 0;
}
