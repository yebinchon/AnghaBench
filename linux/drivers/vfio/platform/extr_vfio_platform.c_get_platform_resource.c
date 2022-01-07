
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {scalar_t__ opaque; } ;
struct resource {int dummy; } ;
struct platform_device {int num_resources; struct resource* resource; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int resource_type (struct resource*) ;

__attribute__((used)) static struct resource *get_platform_resource(struct vfio_platform_device *vdev,
           int num)
{
 struct platform_device *dev = (struct platform_device *) vdev->opaque;
 int i;

 for (i = 0; i < dev->num_resources; i++) {
  struct resource *r = &dev->resource[i];

  if (resource_type(r) & (IORESOURCE_MEM|IORESOURCE_IO)) {
   if (!num)
    return r;

   num--;
  }
 }
 return ((void*)0);
}
