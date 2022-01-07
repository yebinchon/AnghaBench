
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_mmio_device {int vdev; } ;
struct platform_device {int dummy; } ;


 struct virtio_mmio_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_virtio_device (int *) ;

__attribute__((used)) static int virtio_mmio_remove(struct platform_device *pdev)
{
 struct virtio_mmio_device *vm_dev = platform_get_drvdata(pdev);
 unregister_virtio_device(&vm_dev->vdev);

 return 0;
}
