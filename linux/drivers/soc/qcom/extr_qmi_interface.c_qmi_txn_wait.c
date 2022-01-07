
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_txn {int result; int lock; int id; int completion; struct qmi_handle* qmi; } ;
struct qmi_handle {int txn_lock; int txns; } ;


 int ETIMEDOUT ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

int qmi_txn_wait(struct qmi_txn *txn, unsigned long timeout)
{
 struct qmi_handle *qmi = txn->qmi;
 int ret;

 ret = wait_for_completion_timeout(&txn->completion, timeout);

 mutex_lock(&qmi->txn_lock);
 mutex_lock(&txn->lock);
 idr_remove(&qmi->txns, txn->id);
 mutex_unlock(&txn->lock);
 mutex_unlock(&qmi->txn_lock);

 if (ret == 0)
  return -ETIMEDOUT;
 else
  return txn->result;
}
