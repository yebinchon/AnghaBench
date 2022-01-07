
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sas_ha_struct {struct mvs_prv_info* lldd_ha; } ;
struct mvs_prv_info {struct mvs_info** mvi; } ;
struct mvs_info {int dummy; } ;
struct TYPE_2__ {int (* gpio_write ) (struct mvs_prv_info*,int ,int ,int ,int *) ;} ;


 int ENOSYS ;
 TYPE_1__* MVS_CHIP_DISP ;
 int stub1 (struct mvs_prv_info*,int ,int ,int ,int *) ;

int mvs_gpio_write(struct sas_ha_struct *sha, u8 reg_type, u8 reg_index,
   u8 reg_count, u8 *write_data)
{
 struct mvs_prv_info *mvs_prv = sha->lldd_ha;
 struct mvs_info *mvi = mvs_prv->mvi[0];

 if (MVS_CHIP_DISP->gpio_write) {
  return MVS_CHIP_DISP->gpio_write(mvs_prv, reg_type,
   reg_index, reg_count, write_data);
 }

 return -ENOSYS;
}
