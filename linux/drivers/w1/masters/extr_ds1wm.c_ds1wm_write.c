
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ds1wm_data {int int_en_reg_none; TYPE_1__* pdev; int * write_complete; } ;
struct TYPE_2__ {int dev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DS1WM_DATA ;
 int DS1WM_INTEN_ETMT ;
 int DS1WM_INT_EN ;
 int DS1WM_TIMEOUT ;
 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int write_done ;

__attribute__((used)) static int ds1wm_write(struct ds1wm_data *ds1wm_data, u8 data)
{
 unsigned long timeleft;
 DECLARE_COMPLETION_ONSTACK(write_done);
 ds1wm_data->write_complete = &write_done;

 ds1wm_write_register(ds1wm_data, DS1WM_INT_EN,
 ds1wm_data->int_en_reg_none | DS1WM_INTEN_ETMT);

 ds1wm_write_register(ds1wm_data, DS1WM_DATA, data);

 timeleft = wait_for_completion_timeout(&write_done, DS1WM_TIMEOUT);

 ds1wm_data->write_complete = ((void*)0);
 if (!timeleft) {
  dev_err(&ds1wm_data->pdev->dev, "write failed, timed out\n");
  return -ETIMEDOUT;
 }

 return 0;
}
