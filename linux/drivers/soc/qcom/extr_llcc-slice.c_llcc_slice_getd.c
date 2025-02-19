
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct llcc_slice_desc {int slice_size; int slice_id; } ;
struct llcc_slice_config {scalar_t__ usecase_id; int max_cap; int slice_id; } ;
struct TYPE_4__ {scalar_t__ cfg_size; struct llcc_slice_config* cfg; } ;


 int ENODEV ;
 int ENOMEM ;
 struct llcc_slice_desc* ERR_CAST (TYPE_1__*) ;
 struct llcc_slice_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 TYPE_1__* drv_data ;
 struct llcc_slice_desc* kzalloc (int,int ) ;

struct llcc_slice_desc *llcc_slice_getd(u32 uid)
{
 const struct llcc_slice_config *cfg;
 struct llcc_slice_desc *desc;
 u32 sz, count;

 if (IS_ERR(drv_data))
  return ERR_CAST(drv_data);

 cfg = drv_data->cfg;
 sz = drv_data->cfg_size;

 for (count = 0; cfg && count < sz; count++, cfg++)
  if (cfg->usecase_id == uid)
   break;

 if (count == sz || !cfg)
  return ERR_PTR(-ENODEV);

 desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return ERR_PTR(-ENOMEM);

 desc->slice_id = cfg->slice_id;
 desc->slice_size = cfg->max_cap;

 return desc;
}
