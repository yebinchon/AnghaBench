
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int init_cap; int dev; int init_clbcnt; } ;


 int dev_err (int ,char*) ;
 int sc27xx_fgu_get_clbcnt (struct sc27xx_fgu_data*,int *) ;

__attribute__((used)) static void sc27xx_fgu_adjust_cap(struct sc27xx_fgu_data *data, int cap)
{
 int ret;

 data->init_cap = cap;
 ret = sc27xx_fgu_get_clbcnt(data, &data->init_clbcnt);
 if (ret)
  dev_err(data->dev, "failed to get init coulomb counter\n");
}
