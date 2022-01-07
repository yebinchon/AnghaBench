
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_qrtr {int dummy; } ;
struct qmi_txn {int dummy; } ;
struct qmi_handle {int dummy; } ;
struct qmi_elem_info {int dummy; } ;
typedef int ssize_t ;


 int QMI_RESPONSE ;
 int qmi_send_message (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,int ,int,size_t,struct qmi_elem_info*,void const*) ;

ssize_t qmi_send_response(struct qmi_handle *qmi, struct sockaddr_qrtr *sq,
     struct qmi_txn *txn, int msg_id, size_t len,
     struct qmi_elem_info *ei, const void *c_struct)
{
 return qmi_send_message(qmi, sq, txn, QMI_RESPONSE, msg_id, len, ei,
    c_struct);
}
