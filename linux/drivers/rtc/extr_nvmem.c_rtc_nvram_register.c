
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* parent; } ;
struct rtc_device {TYPE_4__* nvram; TYPE_3__ dev; } ;
struct nvmem_device {int dummy; } ;
struct TYPE_8__ {char* name; int mode; } ;
struct TYPE_11__ {size_t size; int write; int read; struct nvmem_device* private; TYPE_1__ attr; } ;
struct TYPE_9__ {int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* kzalloc (int,int ) ;
 int rtc_nvram_read ;
 int rtc_nvram_write ;
 int sysfs_bin_attr_init (TYPE_4__*) ;
 int sysfs_create_bin_file (int *,TYPE_4__*) ;

__attribute__((used)) static int rtc_nvram_register(struct rtc_device *rtc,
         struct nvmem_device *nvmem, size_t size)
{
 int err;

 rtc->nvram = kzalloc(sizeof(*rtc->nvram), GFP_KERNEL);
 if (!rtc->nvram)
  return -ENOMEM;

 rtc->nvram->attr.name = "nvram";
 rtc->nvram->attr.mode = 0644;
 rtc->nvram->private = nvmem;

 sysfs_bin_attr_init(rtc->nvram);

 rtc->nvram->read = rtc_nvram_read;
 rtc->nvram->write = rtc_nvram_write;
 rtc->nvram->size = size;

 err = sysfs_create_bin_file(&rtc->dev.parent->kobj,
        rtc->nvram);
 if (err) {
  kfree(rtc->nvram);
  rtc->nvram = ((void*)0);
 }

 return err;
}
