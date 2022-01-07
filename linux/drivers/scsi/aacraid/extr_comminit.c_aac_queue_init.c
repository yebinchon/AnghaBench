
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void** consumer; void** producer; } ;
struct aac_queue {int entries; TYPE_1__ headers; int lockdata; int * lock; int qfull; int cmdq; int cmdready; struct aac_dev* dev; int numpending; } ;
struct aac_dev {int dummy; } ;
typedef void* __le32 ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 void* cpu_to_le32 (int) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void aac_queue_init(struct aac_dev * dev, struct aac_queue * q, u32 *mem, int qsize)
{
 atomic_set(&q->numpending, 0);
 q->dev = dev;
 init_waitqueue_head(&q->cmdready);
 INIT_LIST_HEAD(&q->cmdq);
 init_waitqueue_head(&q->qfull);
 spin_lock_init(&q->lockdata);
 q->lock = &q->lockdata;
 q->headers.producer = (__le32 *)mem;
 q->headers.consumer = (__le32 *)(mem+1);
 *(q->headers.producer) = cpu_to_le32(qsize);
 *(q->headers.consumer) = cpu_to_le32(qsize);
 q->entries = qsize;
}
