
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3020_platform_data {int leftshift; } ;
struct v3020 {int * ioaddress; int leftshift; } ;
struct platform_device {int num_resources; TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ flags; int start; } ;


 int EBUSY ;
 scalar_t__ IORESOURCE_MEM ;
 int * ioremap (int ,int) ;

__attribute__((used)) static int v3020_mmio_map(struct v3020 *chip, struct platform_device *pdev,
     struct v3020_platform_data *pdata)
{
 if (pdev->num_resources != 1)
  return -EBUSY;

 if (pdev->resource[0].flags != IORESOURCE_MEM)
  return -EBUSY;

 chip->leftshift = pdata->leftshift;
 chip->ioaddress = ioremap(pdev->resource[0].start, 1);
 if (chip->ioaddress == ((void*)0))
  return -EBUSY;

 return 0;
}
