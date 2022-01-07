
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int of_property_read_u32_array (int ,char const*,int *,int) ;

__attribute__((used)) static void xgene_phy_get_param(struct platform_device *pdev,
    const char *name, u32 *buffer,
    int count, u32 *default_val,
    u32 conv_factor)
{
 int i;

 if (!of_property_read_u32_array(pdev->dev.of_node, name, buffer,
     count)) {
  for (i = 0; i < count; i++)
   buffer[i] /= conv_factor;
  return;
 }

 for (i = 0; i < count; i++)
  buffer[i] = default_val[i % 3];
}
