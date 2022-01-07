
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ds1wm_data {int int_en_reg_none; int read_byte; int read_error; TYPE_1__* pdev; int * read_complete; } ;
struct TYPE_2__ {int dev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DS1WM_DATA ;
 int DS1WM_INTEN_ERBF ;
 int DS1WM_INT_EN ;
 int DS1WM_TIMEOUT ;
 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 int ds1wm_read_register (struct ds1wm_data*,int ) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,unsigned char) ;
 int read_done ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static u8 ds1wm_read(struct ds1wm_data *ds1wm_data, unsigned char write_data)
{
 unsigned long timeleft;
 u8 intEnable = DS1WM_INTEN_ERBF | ds1wm_data->int_en_reg_none;
 DECLARE_COMPLETION_ONSTACK(read_done);

 ds1wm_read_register(ds1wm_data, DS1WM_DATA);

 ds1wm_data->read_complete = &read_done;
 ds1wm_write_register(ds1wm_data, DS1WM_INT_EN, intEnable);

 ds1wm_write_register(ds1wm_data, DS1WM_DATA, write_data);
 timeleft = wait_for_completion_timeout(&read_done, DS1WM_TIMEOUT);

 ds1wm_data->read_complete = ((void*)0);
 if (!timeleft) {
  dev_err(&ds1wm_data->pdev->dev, "read failed, timed out\n");
  ds1wm_data->read_error = -ETIMEDOUT;
  return 0xFF;
 }
 ds1wm_data->read_error = 0;
 return ds1wm_data->read_byte;
}
