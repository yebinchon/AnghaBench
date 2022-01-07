
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct max17042_chip {TYPE_1__* pdata; } ;
struct TYPE_4__ {int cell_char_tbl; } ;
struct TYPE_3__ {TYPE_2__* config_data; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX17042_MODELChrTbl ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int max17042_lock_model (struct max17042_chip*) ;
 int max17042_model_data_compare (struct max17042_chip*,int ,int *,int) ;
 int max17042_read_model_data (struct max17042_chip*,int ,int *,int) ;
 int max17042_unlock_model (struct max17042_chip*) ;
 int max17042_write_model_data (struct max17042_chip*,int ,int) ;

__attribute__((used)) static int max17042_init_model(struct max17042_chip *chip)
{
 int ret;
 int table_size = ARRAY_SIZE(chip->pdata->config_data->cell_char_tbl);
 u16 *temp_data;

 temp_data = kcalloc(table_size, sizeof(*temp_data), GFP_KERNEL);
 if (!temp_data)
  return -ENOMEM;

 max17042_unlock_model(chip);
 max17042_write_model_data(chip, MAX17042_MODELChrTbl,
    table_size);
 max17042_read_model_data(chip, MAX17042_MODELChrTbl, temp_data,
    table_size);

 ret = max17042_model_data_compare(
  chip,
  chip->pdata->config_data->cell_char_tbl,
  temp_data,
  table_size);

 max17042_lock_model(chip);
 kfree(temp_data);

 return ret;
}
