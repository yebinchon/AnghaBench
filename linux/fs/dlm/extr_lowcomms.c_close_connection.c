
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int flags; int sock_mutex; scalar_t__ retries; int * rx_page; struct connection* othercon; int * sock; int nodeid; int rwork; int swork; } ;


 int CF_CLOSING ;
 int CF_READ_PENDING ;
 int CF_WRITE_PENDING ;
 int __free_page (int *) ;
 scalar_t__ cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int log_print (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int restore_callbacks (int *) ;
 int sock_release (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void close_connection(struct connection *con, bool and_other,
        bool tx, bool rx)
{
 bool closing = test_and_set_bit(CF_CLOSING, &con->flags);

 if (tx && !closing && cancel_work_sync(&con->swork)) {
  log_print("canceled swork for node %d", con->nodeid);
  clear_bit(CF_WRITE_PENDING, &con->flags);
 }
 if (rx && !closing && cancel_work_sync(&con->rwork)) {
  log_print("canceled rwork for node %d", con->nodeid);
  clear_bit(CF_READ_PENDING, &con->flags);
 }

 mutex_lock(&con->sock_mutex);
 if (con->sock) {
  restore_callbacks(con->sock);
  sock_release(con->sock);
  con->sock = ((void*)0);
 }
 if (con->othercon && and_other) {

  close_connection(con->othercon, 0, 1, 1);
 }
 if (con->rx_page) {
  __free_page(con->rx_page);
  con->rx_page = ((void*)0);
 }

 con->retries = 0;
 mutex_unlock(&con->sock_mutex);
 clear_bit(CF_CLOSING, &con->flags);
}
