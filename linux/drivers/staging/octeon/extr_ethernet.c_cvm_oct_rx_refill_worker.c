
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HZ ;
 int atomic_read (int *) ;
 int cvm_oct_poll_queue_stopping ;
 int cvm_oct_rx_refill_pool (int) ;
 int cvm_oct_rx_refill_work ;
 int num_packet_buffers ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void cvm_oct_rx_refill_worker(struct work_struct *work)
{







 cvm_oct_rx_refill_pool(num_packet_buffers / 2);

 if (!atomic_read(&cvm_oct_poll_queue_stopping))
  schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);
}
