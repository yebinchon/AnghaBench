
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {struct maple_device* mq; int recvbuf; } ;


 int kfree (struct maple_device*) ;
 int kmem_cache_free (int ,int ) ;
 int maple_queue_cache ;

__attribute__((used)) static void maple_free_dev(struct maple_device *mdev)
{
 kmem_cache_free(maple_queue_cache, mdev->mq->recvbuf);
 kfree(mdev->mq);
 kfree(mdev);
}
