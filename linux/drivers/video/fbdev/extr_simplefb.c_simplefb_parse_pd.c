
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct simplefb_platform_data {int format; int stride; int height; int width; } ;
struct simplefb_params {TYPE_1__* format; int stride; int height; int width; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_err (int *,char*) ;
 struct simplefb_platform_data* dev_get_platdata (int *) ;
 TYPE_1__* simplefb_formats ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int simplefb_parse_pd(struct platform_device *pdev,
        struct simplefb_params *params)
{
 struct simplefb_platform_data *pd = dev_get_platdata(&pdev->dev);
 int i;

 params->width = pd->width;
 params->height = pd->height;
 params->stride = pd->stride;

 params->format = ((void*)0);
 for (i = 0; i < ARRAY_SIZE(simplefb_formats); i++) {
  if (strcmp(pd->format, simplefb_formats[i].name))
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
