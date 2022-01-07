
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct max17042_chip {TYPE_2__* pdata; } ;
struct TYPE_4__ {TYPE_1__* config_data; } ;
struct TYPE_3__ {int cell_char_tbl; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX17042_MODELChrTbl ;
 scalar_t__* kcalloc (int,int,int ) ;
 int kfree (scalar_t__*) ;
 int max17042_read_model_data (struct max17042_chip*,int ,scalar_t__*,int) ;

__attribute__((used)) static int max17042_verify_model_lock(struct max17042_chip *chip)
{
 int i;
 int table_size = ARRAY_SIZE(chip->pdata->config_data->cell_char_tbl);
 u16 *temp_data;
 int ret = 0;

 temp_data = kcalloc(table_size, sizeof(*temp_data), GFP_KERNEL);
 if (!temp_data)
  return -ENOMEM;

 max17042_read_model_data(chip, MAX17042_MODELChrTbl, temp_data,
    table_size);
 for (i = 0; i < table_size; i++)
  if (temp_data[i])
   ret = -EINVAL;

 kfree(temp_data);
 return ret;
}
