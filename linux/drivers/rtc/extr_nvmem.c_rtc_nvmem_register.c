
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct rtc_device {scalar_t__ nvram_old_abi; TYPE_1__ dev; int owner; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {int size; int owner; int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct nvmem_device*) ;
 int PTR_ERR (struct nvmem_device*) ;
 struct nvmem_device* devm_nvmem_register (int ,struct nvmem_config*) ;
 int rtc_nvram_register (struct rtc_device*,struct nvmem_device*,int ) ;

int rtc_nvmem_register(struct rtc_device *rtc,
         struct nvmem_config *nvmem_config)
{
 struct nvmem_device *nvmem;

 if (!nvmem_config)
  return -ENODEV;

 nvmem_config->dev = rtc->dev.parent;
 nvmem_config->owner = rtc->owner;
 nvmem = devm_nvmem_register(rtc->dev.parent, nvmem_config);
 if (IS_ERR(nvmem))
  return PTR_ERR(nvmem);


 if (rtc->nvram_old_abi)
  rtc_nvram_register(rtc, nvmem, nvmem_config->size);

 return 0;
}
