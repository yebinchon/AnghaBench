
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct tb_switch {int * drom; TYPE_2__* tb; } ;
struct tb_drom_header {int data_len; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__* nhi; } ;
struct TYPE_4__ {TYPE_3__* pdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TB_DROM_DATA_START ;
 int device_property_count_u8 (struct device*,char*) ;
 int device_property_read_u8_array (struct device*,char*,int *,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int tb_drom_copy_efi(struct tb_switch *sw, u16 *size)
{
 struct device *dev = &sw->tb->nhi->pdev->dev;
 int len, res;

 len = device_property_count_u8(dev, "ThunderboltDROM");
 if (len < 0 || len < sizeof(struct tb_drom_header))
  return -EINVAL;

 sw->drom = kmalloc(len, GFP_KERNEL);
 if (!sw->drom)
  return -ENOMEM;

 res = device_property_read_u8_array(dev, "ThunderboltDROM", sw->drom,
         len);
 if (res)
  goto err;

 *size = ((struct tb_drom_header *)sw->drom)->data_len +
         TB_DROM_DATA_START;
 if (*size > len)
  goto err;

 return 0;

err:
 kfree(sw->drom);
 sw->drom = ((void*)0);
 return -EINVAL;
}
