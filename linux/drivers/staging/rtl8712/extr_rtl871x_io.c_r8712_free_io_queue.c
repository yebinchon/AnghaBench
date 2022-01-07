
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_queue {int intf; struct io_queue* pallocated_free_ioreqs_buf; } ;
struct _adapter {struct io_queue* pio_queue; } ;


 int kfree (struct io_queue*) ;
 int unregister_intf_hdl (int *) ;

void r8712_free_io_queue(struct _adapter *adapter)
{
 struct io_queue *pio_queue = adapter->pio_queue;

 if (pio_queue) {
  kfree(pio_queue->pallocated_free_ioreqs_buf);
  adapter->pio_queue = ((void*)0);
  unregister_intf_hdl(&pio_queue->intf);
  kfree(pio_queue);
 }
}
