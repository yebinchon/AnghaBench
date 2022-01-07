
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {scalar_t__ bitmap_id; int tx_thread_active; int rx_thread_active; void* tx_thread; void* rx_thread; } ;
struct TYPE_2__ {int ts_bitmap_lock; int ts_bitmap; } ;


 int ENOMEM ;
 int ISCSIT_BITMAP_BITS ;
 int ISCSI_RX_THREAD_NAME ;
 int ISCSI_TX_THREAD_NAME ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SIGINT ;
 scalar_t__ bitmap_find_free_region (int ,int ,int ) ;
 int bitmap_release_region (int ,scalar_t__,int ) ;
 int get_order (int) ;
 int iscsi_target_rx_thread ;
 int iscsi_target_tx_thread ;
 TYPE_1__* iscsit_global ;
 void* kthread_run (int ,struct iscsi_conn*,char*,int ) ;
 int kthread_stop (void*) ;
 int pr_err (char*) ;
 int send_sig (int ,void*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsit_start_kthreads(struct iscsi_conn *conn)
{
 int ret = 0;

 spin_lock(&iscsit_global->ts_bitmap_lock);
 conn->bitmap_id = bitmap_find_free_region(iscsit_global->ts_bitmap,
     ISCSIT_BITMAP_BITS, get_order(1));
 spin_unlock(&iscsit_global->ts_bitmap_lock);

 if (conn->bitmap_id < 0) {
  pr_err("bitmap_find_free_region() failed for"
         " iscsit_start_kthreads()\n");
  return -ENOMEM;
 }

 conn->tx_thread = kthread_run(iscsi_target_tx_thread, conn,
          "%s", ISCSI_TX_THREAD_NAME);
 if (IS_ERR(conn->tx_thread)) {
  pr_err("Unable to start iscsi_target_tx_thread\n");
  ret = PTR_ERR(conn->tx_thread);
  goto out_bitmap;
 }
 conn->tx_thread_active = 1;

 conn->rx_thread = kthread_run(iscsi_target_rx_thread, conn,
          "%s", ISCSI_RX_THREAD_NAME);
 if (IS_ERR(conn->rx_thread)) {
  pr_err("Unable to start iscsi_target_rx_thread\n");
  ret = PTR_ERR(conn->rx_thread);
  goto out_tx;
 }
 conn->rx_thread_active = 1;

 return 0;
out_tx:
 send_sig(SIGINT, conn->tx_thread, 1);
 kthread_stop(conn->tx_thread);
 conn->tx_thread_active = 0;
out_bitmap:
 spin_lock(&iscsit_global->ts_bitmap_lock);
 bitmap_release_region(iscsit_global->ts_bitmap, conn->bitmap_id,
         get_order(1));
 spin_unlock(&iscsit_global->ts_bitmap_lock);
 return ret;
}
