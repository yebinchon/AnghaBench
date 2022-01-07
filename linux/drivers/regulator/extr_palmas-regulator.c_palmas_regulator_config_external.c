
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_regs_info {int sleep_id; } ;
struct palmas_reg_init {int roof_floor; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas {int dev; struct palmas_pmic_driver_data* pmic_ddata; } ;


 int dev_err (int ,char*,int,int) ;
 int palmas_ext_control_req_config (struct palmas*,int ,int ,int) ;

__attribute__((used)) static int palmas_regulator_config_external(struct palmas *palmas, int id,
  struct palmas_reg_init *reg_init)
{
 struct palmas_pmic_driver_data *ddata = palmas->pmic_ddata;
 struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];
 int ret;

 ret = palmas_ext_control_req_config(palmas, rinfo->sleep_id,
         reg_init->roof_floor, 1);
 if (ret < 0)
  dev_err(palmas->dev,
   "Ext control config for regulator %d failed %d\n",
   id, ret);
 return ret;
}
