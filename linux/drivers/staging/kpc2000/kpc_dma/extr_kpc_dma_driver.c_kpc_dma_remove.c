
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct kpc_dma_device {TYPE_2__* pldev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {int id; TYPE_1__ dev; } ;


 int ENXIO ;
 int MKDEV (int ,int ) ;
 int assigned_major_num ;
 int destroy_dma_engine (struct kpc_dma_device*) ;
 int device_destroy (int ,int ) ;
 int kfree (struct kpc_dma_device*) ;
 int kpc_dma_class ;
 int kpc_dma_del_device (struct kpc_dma_device*) ;
 int lock_engine (struct kpc_dma_device*) ;
 int ndd_attr_list ;
 struct kpc_dma_device* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_files (int *,int ) ;

__attribute__((used)) static
int kpc_dma_remove(struct platform_device *pldev)
{
 struct kpc_dma_device *ldev = platform_get_drvdata(pldev);

 if (!ldev)
  return -ENXIO;

 lock_engine(ldev);
 sysfs_remove_files(&(ldev->pldev->dev.kobj), ndd_attr_list);
 destroy_dma_engine(ldev);
 kpc_dma_del_device(ldev);
 device_destroy(kpc_dma_class, MKDEV(assigned_major_num, ldev->pldev->id));
 kfree(ldev);

 return 0;
}
