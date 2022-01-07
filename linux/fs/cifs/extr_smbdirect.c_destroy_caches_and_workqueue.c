
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_connection {int request_cache; int request_mempool; int response_cache; int response_mempool; int workqueue; } ;


 int destroy_receive_buffers (struct smbd_connection*) ;
 int destroy_workqueue (int ) ;
 int kmem_cache_destroy (int ) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static void destroy_caches_and_workqueue(struct smbd_connection *info)
{
 destroy_receive_buffers(info);
 destroy_workqueue(info->workqueue);
 mempool_destroy(info->response_mempool);
 kmem_cache_destroy(info->response_cache);
 mempool_destroy(info->request_mempool);
 kmem_cache_destroy(info->request_cache);
}
