
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct gb_operation {int id; TYPE_2__* response; TYPE_1__* request; } ;
struct gb_loopback_transfer_response {int reserved1; int reserved0; int data; } ;
struct gb_loopback_transfer_request {int data; int len; } ;
struct gb_loopback_async_operation {struct gb_operation* operation; struct gb_loopback* gb; } ;
struct gb_loopback {void* gbphy_latency_ts; void* apbridge_latency_ts; TYPE_4__* connection; } ;
struct TYPE_8__ {TYPE_3__* bundle; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {struct gb_loopback_transfer_response* payload; } ;
struct TYPE_5__ {struct gb_loopback_transfer_request* payload; } ;


 int EREMOTEIO ;
 scalar_t__ __le32_to_cpu (int ) ;
 int dev_err (int *,char*,int ) ;
 size_t le32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,size_t) ;

__attribute__((used)) static int gb_loopback_async_transfer_complete(
    struct gb_loopback_async_operation *op_async)
{
 struct gb_loopback *gb;
 struct gb_operation *operation;
 struct gb_loopback_transfer_request *request;
 struct gb_loopback_transfer_response *response;
 size_t len;
 int retval = 0;

 gb = op_async->gb;
 operation = op_async->operation;
 request = operation->request->payload;
 response = operation->response->payload;
 len = le32_to_cpu(request->len);

 if (memcmp(request->data, response->data, len)) {
  dev_err(&gb->connection->bundle->dev,
   "Loopback Data doesn't match operation id %d\n",
   operation->id);
  retval = -EREMOTEIO;
 } else {
  gb->apbridge_latency_ts =
   (u32)__le32_to_cpu(response->reserved0);
  gb->gbphy_latency_ts =
   (u32)__le32_to_cpu(response->reserved1);
 }

 return retval;
}
