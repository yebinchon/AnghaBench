
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_container {int kref; } ;


 int kref_put (int *,int ) ;
 int vfio_container_release ;

__attribute__((used)) static void vfio_container_put(struct vfio_container *container)
{
 kref_put(&container->kref, vfio_container_release);
}
