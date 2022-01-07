
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_dma_device {int list; } ;


 int kpc_dma_mtx ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void kpc_dma_del_device(struct kpc_dma_device *ldev)
{
 mutex_lock(&kpc_dma_mtx);
 list_del(&ldev->list);
 mutex_unlock(&kpc_dma_mtx);
}
