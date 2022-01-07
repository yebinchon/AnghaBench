
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp872x_platform_data {int general_config; int update_config; } ;
struct lp872x {struct lp872x_platform_data* pdata; } ;


 int LP872X_GENERAL_CFG ;
 int lp872x_init_dvs (struct lp872x*) ;
 int lp872x_write_byte (struct lp872x*,int ,int ) ;

__attribute__((used)) static int lp872x_config(struct lp872x *lp)
{
 struct lp872x_platform_data *pdata = lp->pdata;
 int ret;

 if (!pdata || !pdata->update_config)
  goto init_dvs;

 ret = lp872x_write_byte(lp, LP872X_GENERAL_CFG, pdata->general_config);
 if (ret)
  return ret;

init_dvs:
 return lp872x_init_dvs(lp);
}
