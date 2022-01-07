
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_txn {int lock; int id; struct qmi_handle* qmi; } ;
struct qmi_handle {int txn_lock; int txns; } ;


 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void qmi_txn_cancel(struct qmi_txn *txn)
{
 struct qmi_handle *qmi = txn->qmi;

 mutex_lock(&qmi->txn_lock);
 mutex_lock(&txn->lock);
 idr_remove(&qmi->txns, txn->id);
 mutex_unlock(&txn->lock);
 mutex_unlock(&qmi->txn_lock);
}
