
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int bcdDevice; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;
struct TYPE_6__ {TYPE_2__ cdev; } ;


 int cpu_to_le16 (int ) ;
 int is_valid_bcd (int ) ;
 int kstrtou16 (char const*,int ,int *) ;
 TYPE_3__* to_gadget_info (struct config_item*) ;

__attribute__((used)) static ssize_t gadget_dev_desc_bcdDevice_store(struct config_item *item,
  const char *page, size_t len)
{
 u16 bcdDevice;
 int ret;

 ret = kstrtou16(page, 0, &bcdDevice);
 if (ret)
  return ret;
 ret = is_valid_bcd(bcdDevice);
 if (ret)
  return ret;

 to_gadget_info(item)->cdev.desc.bcdDevice = cpu_to_le16(bcdDevice);
 return len;
}
