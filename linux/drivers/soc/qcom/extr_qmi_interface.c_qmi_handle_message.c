
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_txn ;
struct sockaddr_qrtr {int dummy; } ;
struct qmi_txn {int result; int id; int lock; int completion; scalar_t__ dest; scalar_t__ ei; } ;
struct qmi_header {scalar_t__ type; int txn_id; } ;
struct qmi_handle {int txn_lock; int txns; } ;


 scalar_t__ QMI_RESPONSE ;
 int complete (int *) ;
 struct qmi_txn* idr_find (int *,int ) ;
 int memset (struct qmi_txn*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int qmi_decode_message (void const*,size_t,scalar_t__,scalar_t__) ;
 int qmi_invoke_handler (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,void const*,size_t) ;

__attribute__((used)) static void qmi_handle_message(struct qmi_handle *qmi,
          struct sockaddr_qrtr *sq,
          const void *buf, size_t len)
{
 const struct qmi_header *hdr;
 struct qmi_txn tmp_txn;
 struct qmi_txn *txn = ((void*)0);
 int ret;

 if (len < sizeof(*hdr)) {
  pr_err("ignoring short QMI packet\n");
  return;
 }

 hdr = buf;


 if (hdr->type == QMI_RESPONSE) {
  mutex_lock(&qmi->txn_lock);
  txn = idr_find(&qmi->txns, hdr->txn_id);


  if (!txn) {
   mutex_unlock(&qmi->txn_lock);
   return;
  }

  mutex_lock(&txn->lock);
  mutex_unlock(&qmi->txn_lock);

  if (txn->dest && txn->ei) {
   ret = qmi_decode_message(buf, len, txn->ei, txn->dest);
   if (ret < 0)
    pr_err("failed to decode incoming message\n");

   txn->result = ret;
   complete(&txn->completion);
  } else {
   qmi_invoke_handler(qmi, sq, txn, buf, len);
  }

  mutex_unlock(&txn->lock);
 } else {

  memset(&tmp_txn, 0, sizeof(tmp_txn));
  tmp_txn.id = hdr->txn_id;

  qmi_invoke_handler(qmi, sq, &tmp_txn, buf, len);
 }
}
