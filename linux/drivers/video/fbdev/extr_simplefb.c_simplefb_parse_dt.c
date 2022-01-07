
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct simplefb_params {TYPE_1__* format; int stride; int height; int width; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_err (TYPE_2__*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 TYPE_1__* simplefb_formats ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int simplefb_parse_dt(struct platform_device *pdev,
      struct simplefb_params *params)
{
 struct device_node *np = pdev->dev.of_node;
 int ret;
 const char *format;
 int i;

 ret = of_property_read_u32(np, "width", &params->width);
 if (ret) {
  dev_err(&pdev->dev, "Can't parse width property\n");
  return ret;
 }

 ret = of_property_read_u32(np, "height", &params->height);
 if (ret) {
  dev_err(&pdev->dev, "Can't parse height property\n");
  return ret;
 }

 ret = of_property_read_u32(np, "stride", &params->stride);
 if (ret) {
  dev_err(&pdev->dev, "Can't parse stride property\n");
  return ret;
 }

 ret = of_property_read_string(np, "format", &format);
 if (ret) {
  dev_err(&pdev->dev, "Can't parse format property\n");
  return ret;
 }
 params->format = ((void*)0);
 for (i = 0; i < ARRAY_SIZE(simplefb_formats); i++) {
  if (strcmp(format, simplefb_formats[i].name))
   continue;
  params->format = &simplefb_formats[i];
  break;
 }
 if (!params->format) {
  dev_err(&pdev->dev, "Invalid format value\n");
  return -EINVAL;
 }

 return 0;
}
