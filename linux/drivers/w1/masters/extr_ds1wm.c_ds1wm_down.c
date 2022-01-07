
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ds1wm_data {int pdev; TYPE_1__* cell; int int_en_reg_none; } ;
struct TYPE_2__ {int (* disable ) (int ) ;} ;


 int DS1WM_INT_EN ;
 int ds1wm_reset (struct ds1wm_data*) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void ds1wm_down(struct ds1wm_data *ds1wm_data)
{
 ds1wm_reset(ds1wm_data);


 ds1wm_write_register(ds1wm_data, DS1WM_INT_EN,
  ds1wm_data->int_en_reg_none);

 if (ds1wm_data->cell->disable)
  ds1wm_data->cell->disable(ds1wm_data->pdev);
}
