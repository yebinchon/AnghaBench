
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_qrtr {int dummy; } ;
struct qmi_txn {int dummy; } ;
struct qmi_handle {int dummy; } ;
struct qmi_elem_info {int dummy; } ;
typedef int ssize_t ;


 int QMI_INDICATION ;
 int qmi_send_message (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,int ,int,size_t,struct qmi_elem_info*,void const*) ;
 int qmi_txn_cancel (struct qmi_txn*) ;
 int qmi_txn_init (struct qmi_handle*,struct qmi_txn*,int *,int *) ;

ssize_t qmi_send_indication(struct qmi_handle *qmi, struct sockaddr_qrtr *sq,
       int msg_id, size_t len, struct qmi_elem_info *ei,
       const void *c_struct)
{
 struct qmi_txn txn;
 ssize_t rval;
 int ret;

 ret = qmi_txn_init(qmi, &txn, ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 rval = qmi_send_message(qmi, sq, &txn, QMI_INDICATION, msg_id, len, ei,
    c_struct);


 qmi_txn_cancel(&txn);

 return rval;
}
