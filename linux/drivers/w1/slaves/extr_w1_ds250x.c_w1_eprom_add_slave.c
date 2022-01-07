
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int family; scalar_t__ id; } ;
struct w1_slave {int dev; TYPE_4__ reg_num; TYPE_3__* master; TYPE_1__* family; struct w1_eprom_data* family_data; } ;
struct w1_eprom_data {int size; int nvmem_name; void* read; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int read_only; int word_size; int id; int size; int name; struct w1_slave* priv; int type; int reg_read; int * dev; } ;
struct TYPE_7__ {TYPE_2__* bus_master; } ;
struct TYPE_6__ {char* dev_id; } ;
struct TYPE_5__ {int fid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVMEM_TYPE_OTP ;
 int PTR_ERR_OR_ZERO (struct nvmem_device*) ;
 int W1_DS2501_SIZE ;


 int W1_DS2502_SIZE ;


 int W1_DS2505_SIZE ;
 struct w1_eprom_data* devm_kzalloc (int *,int,int ) ;
 struct nvmem_device* devm_nvmem_register (int *,struct nvmem_config*) ;
 int snprintf (int ,int,char*,...) ;
 void* w1_ds2502_read_page ;
 void* w1_ds2505_read_page ;
 int w1_nvmem_read ;

__attribute__((used)) static int w1_eprom_add_slave(struct w1_slave *sl)
{
 struct w1_eprom_data *data;
 struct nvmem_device *nvmem;
 struct nvmem_config nvmem_cfg = {
  .dev = &sl->dev,
  .reg_read = w1_nvmem_read,
  .type = NVMEM_TYPE_OTP,
  .read_only = 1,
  .word_size = 1,
  .priv = sl,
  .id = -1
 };

 data = devm_kzalloc(&sl->dev, sizeof(struct w1_eprom_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 sl->family_data = data;
 switch (sl->family->fid) {
 case 131:
  data->size = W1_DS2501_SIZE;
  data->read = w1_ds2502_read_page;
  break;
 case 130:
 case 129:
  data->size = W1_DS2502_SIZE;
  data->read = w1_ds2502_read_page;
  break;
 case 128:
  data->size = W1_DS2505_SIZE;
  data->read = w1_ds2505_read_page;
  break;
 }

 if (sl->master->bus_master->dev_id)
  snprintf(data->nvmem_name, sizeof(data->nvmem_name),
    "%s-%02x-%012llx",
    sl->master->bus_master->dev_id, sl->reg_num.family,
    (unsigned long long)sl->reg_num.id);
 else
  snprintf(data->nvmem_name, sizeof(data->nvmem_name),
    "%02x-%012llx",
    sl->reg_num.family,
    (unsigned long long)sl->reg_num.id);

 nvmem_cfg.name = data->nvmem_name;
 nvmem_cfg.size = data->size;

 nvmem = devm_nvmem_register(&sl->dev, &nvmem_cfg);
 return PTR_ERR_OR_ZERO(nvmem);
}
