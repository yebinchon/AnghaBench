
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt9455_info {int voreg; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int F_VOREG ;
 int dev_err (struct device*,char*) ;
 int rt9455_set_field_val (struct rt9455_info*,int ,int ,int ,int ) ;
 int rt9455_voreg_values ;

__attribute__((used)) static int rt9455_set_voreg_before_charge_mode(struct rt9455_info *info)
{
 struct device *dev = &info->client->dev;
 int ret;

 ret = rt9455_set_field_val(info, F_VOREG,
       rt9455_voreg_values,
       ARRAY_SIZE(rt9455_voreg_values),
       info->voreg);
 if (ret) {
  dev_err(dev, "Failed to set VOREG value\n");
  return ret;
 }

 return 0;
}
