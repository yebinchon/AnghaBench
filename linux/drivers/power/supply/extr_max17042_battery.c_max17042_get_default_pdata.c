
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max17042_platform_data {int enable_current_sense; int temp_max; int temp_min; int vmax; int vmin; int num_init_data; int init_data; } ;
struct max17042_chip {scalar_t__ chip_type; int regmap; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int GFP_KERNEL ;
 int MAX17042_DEFAULT_TEMP_MAX ;
 int MAX17042_DEFAULT_TEMP_MIN ;
 int MAX17042_DEFAULT_VMAX ;
 int MAX17042_DEFAULT_VMIN ;
 int MAX17042_MiscCFG ;
 scalar_t__ MAXIM_DEVICE_TYPE_MAX17042 ;
 struct max17042_platform_data* devm_kzalloc (struct device*,int,int ) ;
 int max17047_default_pdata_init_regs ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static struct max17042_platform_data *
max17042_get_default_pdata(struct max17042_chip *chip)
{
 struct device *dev = &chip->client->dev;
 struct max17042_platform_data *pdata;
 int ret, misc_cfg;






 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return pdata;

 if (chip->chip_type != MAXIM_DEVICE_TYPE_MAX17042) {
  pdata->init_data = max17047_default_pdata_init_regs;
  pdata->num_init_data =
   ARRAY_SIZE(max17047_default_pdata_init_regs);
 }

 ret = regmap_read(chip->regmap, MAX17042_MiscCFG, &misc_cfg);
 if (ret < 0)
  return ((void*)0);


 if ((misc_cfg & 0x3) == 0x3)
  pdata->enable_current_sense = 0;
 else
  pdata->enable_current_sense = 1;

 pdata->vmin = MAX17042_DEFAULT_VMIN;
 pdata->vmax = MAX17042_DEFAULT_VMAX;
 pdata->temp_min = MAX17042_DEFAULT_TEMP_MIN;
 pdata->temp_max = MAX17042_DEFAULT_TEMP_MAX;

 return pdata;
}
