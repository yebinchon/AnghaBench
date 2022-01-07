
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_ctrl_pkt {int dummy; } ;
struct qmi_ops {int dummy; } ;
struct qmi_msg_handler {int dummy; } ;
struct qmi_header {int dummy; } ;
struct qmi_handle {size_t recv_buf_size; int recv_buf; int wq; int sock; int sq; struct qmi_ops ops; struct qmi_msg_handler const* handlers; int work; int services; int lookup_results; int lookups; int txns; int sock_lock; int txn_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WQ_UNBOUND ;
 int alloc_workqueue (char*,int ,int) ;
 int destroy_workqueue (int ) ;
 int idr_init (int *) ;
 int kfree (int ) ;
 int kzalloc (size_t,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int qmi_data_ready_work ;
 int qmi_sock_create (struct qmi_handle*,int *) ;

int qmi_handle_init(struct qmi_handle *qmi, size_t recv_buf_size,
      const struct qmi_ops *ops,
      const struct qmi_msg_handler *handlers)
{
 int ret;

 mutex_init(&qmi->txn_lock);
 mutex_init(&qmi->sock_lock);

 idr_init(&qmi->txns);

 INIT_LIST_HEAD(&qmi->lookups);
 INIT_LIST_HEAD(&qmi->lookup_results);
 INIT_LIST_HEAD(&qmi->services);

 INIT_WORK(&qmi->work, qmi_data_ready_work);

 qmi->handlers = handlers;
 if (ops)
  qmi->ops = *ops;


 recv_buf_size += sizeof(struct qmi_header);

 if (recv_buf_size < sizeof(struct qrtr_ctrl_pkt))
  recv_buf_size = sizeof(struct qrtr_ctrl_pkt);

 qmi->recv_buf_size = recv_buf_size;
 qmi->recv_buf = kzalloc(recv_buf_size, GFP_KERNEL);
 if (!qmi->recv_buf)
  return -ENOMEM;

 qmi->wq = alloc_workqueue("qmi_msg_handler", WQ_UNBOUND, 1);
 if (!qmi->wq) {
  ret = -ENOMEM;
  goto err_free_recv_buf;
 }

 qmi->sock = qmi_sock_create(qmi, &qmi->sq);
 if (IS_ERR(qmi->sock)) {
  pr_err("failed to create QMI socket\n");
  ret = PTR_ERR(qmi->sock);
  goto err_destroy_wq;
 }

 return 0;

err_destroy_wq:
 destroy_workqueue(qmi->wq);
err_free_recv_buf:
 kfree(qmi->recv_buf);

 return ret;
}
