
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {long timeout; unsigned int length; struct qeth_channel* channel; int ref_count; int list; int lock; int done; void* data; } ;
struct qeth_channel {int dummy; } ;
struct ccw1 {int dummy; } ;


 unsigned int ALIGN (unsigned int,int) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int QETH_BUFSIZE ;
 int init_completion (int *) ;
 int kfree (struct qeth_cmd_buffer*) ;
 void* kzalloc (unsigned int,int) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

struct qeth_cmd_buffer *qeth_alloc_cmd(struct qeth_channel *channel,
           unsigned int length, unsigned int ccws,
           long timeout)
{
 struct qeth_cmd_buffer *iob;

 if (length > QETH_BUFSIZE)
  return ((void*)0);

 iob = kzalloc(sizeof(*iob), GFP_KERNEL);
 if (!iob)
  return ((void*)0);

 iob->data = kzalloc(ALIGN(length, 8) + ccws * sizeof(struct ccw1),
       GFP_KERNEL | GFP_DMA);
 if (!iob->data) {
  kfree(iob);
  return ((void*)0);
 }

 init_completion(&iob->done);
 spin_lock_init(&iob->lock);
 INIT_LIST_HEAD(&iob->list);
 refcount_set(&iob->ref_count, 1);
 iob->channel = channel;
 iob->timeout = timeout;
 iob->length = length;
 return iob;
}
