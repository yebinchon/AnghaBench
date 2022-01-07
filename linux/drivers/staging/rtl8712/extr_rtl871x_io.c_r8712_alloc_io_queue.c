
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
typedef int u32 ;
struct io_req {int list; } ;
struct io_queue {struct io_queue* pallocated_free_ioreqs_buf; int intf; int free_ioreqs; struct io_queue* free_ioreqs_buf; int lock; int pending; int processing; } ;
struct _adapter {struct io_queue* pio_queue; } ;
typedef int addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_IOREQ ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int kfree (struct io_queue*) ;
 struct io_queue* kmalloc (int,int ) ;
 struct io_queue* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ register_intf_hdl (int *,int *) ;
 int spin_lock_init (int *) ;

uint r8712_alloc_io_queue(struct _adapter *adapter)
{
 u32 i;
 struct io_queue *pio_queue;
 struct io_req *pio_req;

 pio_queue = kmalloc(sizeof(*pio_queue), GFP_ATOMIC);
 if (!pio_queue)
  goto alloc_io_queue_fail;
 INIT_LIST_HEAD(&pio_queue->free_ioreqs);
 INIT_LIST_HEAD(&pio_queue->processing);
 INIT_LIST_HEAD(&pio_queue->pending);
 spin_lock_init(&pio_queue->lock);
 pio_queue->pallocated_free_ioreqs_buf = kzalloc(NUM_IOREQ *
      (sizeof(struct io_req)) + 4,
      GFP_ATOMIC);
 if ((pio_queue->pallocated_free_ioreqs_buf) == ((void*)0))
  goto alloc_io_queue_fail;
 pio_queue->free_ioreqs_buf = pio_queue->pallocated_free_ioreqs_buf + 4
   - ((addr_t)(pio_queue->pallocated_free_ioreqs_buf)
   & 3);
 pio_req = (struct io_req *)(pio_queue->free_ioreqs_buf);
 for (i = 0; i < NUM_IOREQ; i++) {
  INIT_LIST_HEAD(&pio_req->list);
  list_add_tail(&pio_req->list, &pio_queue->free_ioreqs);
  pio_req++;
 }
 if ((register_intf_hdl((u8 *)adapter, &pio_queue->intf)) == _FAIL)
  goto alloc_io_queue_fail;
 adapter->pio_queue = pio_queue;
 return _SUCCESS;
alloc_io_queue_fail:
 if (pio_queue) {
  kfree(pio_queue->pallocated_free_ioreqs_buf);
  kfree(pio_queue);
 }
 adapter->pio_queue = ((void*)0);
 return _FAIL;
}
