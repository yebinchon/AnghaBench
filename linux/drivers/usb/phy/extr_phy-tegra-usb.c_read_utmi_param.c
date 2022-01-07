
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dev_err (TYPE_1__*,char*,char const*,int) ;
 int of_property_read_u32 (int ,char const*,scalar_t__*) ;

__attribute__((used)) static int read_utmi_param(struct platform_device *pdev, const char *param,
      u8 *dest)
{
 u32 value;
 int err = of_property_read_u32(pdev->dev.of_node, param, &value);
 *dest = (u8)value;
 if (err < 0)
  dev_err(&pdev->dev,
   "Failed to read USB UTMI parameter %s: %d\n",
   param, err);
 return err;
}
