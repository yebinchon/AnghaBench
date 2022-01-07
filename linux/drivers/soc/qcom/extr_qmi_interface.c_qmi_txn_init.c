
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_txn {int id; void* dest; struct qmi_elem_info* ei; struct qmi_handle* qmi; int completion; int lock; } ;
struct qmi_handle {int txn_lock; int txns; } ;
struct qmi_elem_info {int dummy; } ;


 int GFP_KERNEL ;
 int U16_MAX ;
 int idr_alloc_cyclic (int *,struct qmi_txn*,int ,int ,int ) ;
 int init_completion (int *) ;
 int memset (struct qmi_txn*,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

int qmi_txn_init(struct qmi_handle *qmi, struct qmi_txn *txn,
   struct qmi_elem_info *ei, void *c_struct)
{
 int ret;

 memset(txn, 0, sizeof(*txn));

 mutex_init(&txn->lock);
 init_completion(&txn->completion);
 txn->qmi = qmi;
 txn->ei = ei;
 txn->dest = c_struct;

 mutex_lock(&qmi->txn_lock);
 ret = idr_alloc_cyclic(&qmi->txns, txn, 0, U16_MAX, GFP_KERNEL);
 if (ret < 0)
  pr_err("failed to allocate transaction id\n");

 txn->id = ret;
 mutex_unlock(&qmi->txn_lock);

 return ret;
}
