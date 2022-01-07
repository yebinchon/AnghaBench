
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapleq {TYPE_1__* recvbuf; struct maple_device* dev; int list; } ;
struct maple_device {int unit; int port; int dev; } ;
struct TYPE_2__ {int * bufx; int * buf; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int *,char*,int ,int ) ;
 int kfree (struct mapleq*) ;
 TYPE_1__* kmem_cache_zalloc (int ,int ) ;
 struct mapleq* kzalloc (int,int ) ;
 int maple_queue_cache ;

__attribute__((used)) static struct mapleq *maple_allocq(struct maple_device *mdev)
{
 struct mapleq *mq;

 mq = kzalloc(sizeof(*mq), GFP_KERNEL);
 if (!mq)
  goto failed_nomem;

 INIT_LIST_HEAD(&mq->list);
 mq->dev = mdev;
 mq->recvbuf = kmem_cache_zalloc(maple_queue_cache, GFP_KERNEL);
 if (!mq->recvbuf)
  goto failed_p2;
 mq->recvbuf->buf = &((mq->recvbuf->bufx)[0]);

 return mq;

failed_p2:
 kfree(mq);
failed_nomem:
 dev_err(&mdev->dev, "could not allocate memory for device (%d, %d)\n",
  mdev->port, mdev->unit);
 return ((void*)0);
}
