
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gb_operation {int type; TYPE_3__* response; TYPE_2__* request; struct gb_connection* connection; } ;
struct gb_loopback_transfer_response {int data; int len; } ;
struct gb_loopback_transfer_request {int data; int len; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct device {int dummy; } ;
struct TYPE_8__ {size_t size_max; } ;
struct TYPE_7__ {struct gb_loopback_transfer_response* payload; } ;
struct TYPE_6__ {int payload_size; struct gb_loopback_transfer_request* payload; } ;
struct TYPE_5__ {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;



 int GFP_KERNEL ;
 int cpu_to_le32 (size_t) ;
 int dev_err (struct device*,char*,...) ;
 TYPE_4__ gb_dev ;
 int gb_operation_response_alloc (struct gb_operation*,size_t,int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (int ,int ,size_t) ;

__attribute__((used)) static int gb_loopback_request_handler(struct gb_operation *operation)
{
 struct gb_connection *connection = operation->connection;
 struct gb_loopback_transfer_request *request;
 struct gb_loopback_transfer_response *response;
 struct device *dev = &connection->bundle->dev;
 size_t len;


 switch (operation->type) {
 case 130:
 case 129:
  return 0;
 case 128:
  if (operation->request->payload_size < sizeof(*request)) {
   dev_err(dev, "transfer request too small (%zu < %zu)\n",
    operation->request->payload_size,
    sizeof(*request));
   return -EINVAL;
  }
  request = operation->request->payload;
  len = le32_to_cpu(request->len);
  if (len > gb_dev.size_max) {
   dev_err(dev, "transfer request too large (%zu > %zu)\n",
    len, gb_dev.size_max);
   return -EINVAL;
  }

  if (!gb_operation_response_alloc(operation,
    len + sizeof(*response), GFP_KERNEL)) {
   dev_err(dev, "error allocating response\n");
   return -ENOMEM;
  }
  response = operation->response->payload;
  response->len = cpu_to_le32(len);
  if (len)
   memcpy(response->data, request->data, len);

  return 0;
 default:
  dev_err(dev, "unsupported request: %u\n", operation->type);
  return -EINVAL;
 }
}
