
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_qrtr {int dummy; } ;
struct qmi_txn {int dummy; } ;
struct qmi_msg_handler {scalar_t__ type; scalar_t__ msg_id; int (* fn ) (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,void*) ;int ei; int decoded_size; } ;
struct qmi_header {scalar_t__ type; scalar_t__ msg_id; } ;
struct qmi_handle {struct qmi_msg_handler* handlers; } ;


 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int pr_err (char*) ;
 int qmi_decode_message (void const*,size_t,int ,void*) ;
 int stub1 (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,void*) ;

__attribute__((used)) static void qmi_invoke_handler(struct qmi_handle *qmi, struct sockaddr_qrtr *sq,
          struct qmi_txn *txn, const void *buf, size_t len)
{
 const struct qmi_msg_handler *handler;
 const struct qmi_header *hdr = buf;
 void *dest;
 int ret;

 if (!qmi->handlers)
  return;

 for (handler = qmi->handlers; handler->fn; handler++) {
  if (handler->type == hdr->type &&
      handler->msg_id == hdr->msg_id)
   break;
 }

 if (!handler->fn)
  return;

 dest = kzalloc(handler->decoded_size, GFP_KERNEL);
 if (!dest)
  return;

 ret = qmi_decode_message(buf, len, handler->ei, dest);
 if (ret < 0)
  pr_err("failed to decode incoming message\n");
 else
  handler->fn(qmi, sq, txn, dest);

 kfree(dest);
}
