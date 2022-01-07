
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct gb_operation {int type; TYPE_2__* request; struct gb_connection* connection; } ;
struct gb_log_send_log_request {char* msg; int len; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int payload_size; struct gb_log_send_log_request* payload; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;
 int GB_LOG_MAX_LEN ;
 int GB_LOG_TYPE_SEND_LOG ;
 int dev_dbg (struct device*,char*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gb_log_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct device *dev = &connection->bundle->dev;
 struct gb_log_send_log_request *receive;
 u16 len;

 if (op->type != GB_LOG_TYPE_SEND_LOG) {
  dev_err(dev, "unknown request type 0x%02x\n", op->type);
  return -EINVAL;
 }


 if (op->request->payload_size < sizeof(*receive)) {
  dev_err(dev, "log request too small (%zu < %zu)\n",
   op->request->payload_size, sizeof(*receive));
  return -EINVAL;
 }
 receive = op->request->payload;
 len = le16_to_cpu(receive->len);
 if (len != (op->request->payload_size - sizeof(*receive))) {
  dev_err(dev, "log request wrong size %d vs %zu\n", len,
   (op->request->payload_size - sizeof(*receive)));
  return -EINVAL;
 }
 if (len == 0) {
  dev_err(dev, "log request of 0 bytes?\n");
  return -EINVAL;
 }

 if (len > GB_LOG_MAX_LEN) {
  dev_err(dev, "log request too big: %d\n", len);
  return -EINVAL;
 }


 receive->msg[len - 1] = '\0';





 dev_dbg(dev, "%s", receive->msg);

 return 0;
}
