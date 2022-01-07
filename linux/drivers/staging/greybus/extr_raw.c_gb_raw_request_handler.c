
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gb_raw_send_request {int data; int len; } ;
struct gb_raw {int dummy; } ;
struct gb_operation {TYPE_1__* request; int type; struct gb_connection* connection; } ;
struct gb_connection {TYPE_2__* bundle; } ;
struct device {int dummy; } ;
typedef int __le32 ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int payload_size; struct gb_raw_send_request* payload; } ;


 int EINVAL ;
 int GB_RAW_TYPE_SEND ;
 int dev_err (struct device*,char*,...) ;
 struct gb_raw* greybus_get_drvdata (TYPE_2__*) ;
 int le32_to_cpu (int ) ;
 int receive_data (struct gb_raw*,int,int ) ;

__attribute__((used)) static int gb_raw_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct device *dev = &connection->bundle->dev;
 struct gb_raw *raw = greybus_get_drvdata(connection->bundle);
 struct gb_raw_send_request *receive;
 u32 len;

 if (op->type != GB_RAW_TYPE_SEND) {
  dev_err(dev, "unknown request type 0x%02x\n", op->type);
  return -EINVAL;
 }


 if (op->request->payload_size < sizeof(*receive)) {
  dev_err(dev, "raw receive request too small (%zu < %zu)\n",
   op->request->payload_size, sizeof(*receive));
  return -EINVAL;
 }
 receive = op->request->payload;
 len = le32_to_cpu(receive->len);
 if (len != (int)(op->request->payload_size - sizeof(__le32))) {
  dev_err(dev, "raw receive request wrong size %d vs %d\n", len,
   (int)(op->request->payload_size - sizeof(__le32)));
  return -EINVAL;
 }
 if (len == 0) {
  dev_err(dev, "raw receive request of 0 bytes?\n");
  return -EINVAL;
 }

 return receive_data(raw, len, receive->data);
}
