
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapleq {int recvbuf; struct mapleq* mq; } ;
struct maple_device {int recvbuf; struct maple_device* mq; } ;
struct device {int dummy; } ;


 int kfree (struct mapleq*) ;
 int kmem_cache_free (int ,int ) ;
 int maple_queue_cache ;
 struct mapleq* to_maple_dev (struct device*) ;

__attribute__((used)) static void maple_release_device(struct device *dev)
{
 struct maple_device *mdev;
 struct mapleq *mq;

 mdev = to_maple_dev(dev);
 mq = mdev->mq;
 kmem_cache_free(maple_queue_cache, mq->recvbuf);
 kfree(mq);
 kfree(mdev);
}
