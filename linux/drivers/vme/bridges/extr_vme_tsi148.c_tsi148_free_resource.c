
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct vme_master_resource {TYPE_1__ bus_resource; int * kern_base; } ;


 int iounmap (int *) ;
 int kfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int release_resource (TYPE_1__*) ;

__attribute__((used)) static void tsi148_free_resource(struct vme_master_resource *image)
{
 iounmap(image->kern_base);
 image->kern_base = ((void*)0);
 release_resource(&image->bus_resource);
 kfree(image->bus_resource.name);
 memset(&image->bus_resource, 0, sizeof(image->bus_resource));
}
