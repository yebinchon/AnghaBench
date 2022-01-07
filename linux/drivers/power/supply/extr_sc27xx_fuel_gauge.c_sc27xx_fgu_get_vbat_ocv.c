
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int internal_resist; } ;


 int sc27xx_fgu_get_current (struct sc27xx_fgu_data*,int*) ;
 int sc27xx_fgu_get_vbat_vol (struct sc27xx_fgu_data*,int*) ;

__attribute__((used)) static int sc27xx_fgu_get_vbat_ocv(struct sc27xx_fgu_data *data, int *val)
{
 int vol, cur, ret;

 ret = sc27xx_fgu_get_vbat_vol(data, &vol);
 if (ret)
  return ret;

 ret = sc27xx_fgu_get_current(data, &cur);
 if (ret)
  return ret;


 *val = vol * 1000 - cur * data->internal_resist;

 return 0;
}
