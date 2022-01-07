
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct gb_loopback_transfer_response {int reserved1; int reserved0; int data; int len; } ;
struct gb_loopback_transfer_request {int reserved1; int reserved0; int data; int len; } ;
struct gb_loopback {void* gbphy_latency_ts; void* apbridge_latency_ts; TYPE_2__* connection; } ;
struct TYPE_4__ {TYPE_1__* bundle; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int EREMOTEIO ;
 int GB_LOOPBACK_TYPE_TRANSFER ;
 int GFP_KERNEL ;
 scalar_t__ __le32_to_cpu (int ) ;
 int cpu_to_le32 (void*) ;
 int dev_err (int *,char*) ;
 int gb_loopback_operation_sync (struct gb_loopback*,int ,struct gb_loopback_transfer_response*,void*,struct gb_loopback_transfer_response*,void*) ;
 int kfree (struct gb_loopback_transfer_response*) ;
 struct gb_loopback_transfer_response* kmalloc (void*,int ) ;
 scalar_t__ memcmp (int ,int ,void*) ;
 int memset (int ,int,void*) ;

__attribute__((used)) static int gb_loopback_sync_transfer(struct gb_loopback *gb, u32 len)
{
 struct gb_loopback_transfer_request *request;
 struct gb_loopback_transfer_response *response;
 int retval;

 gb->apbridge_latency_ts = 0;
 gb->gbphy_latency_ts = 0;

 request = kmalloc(len + sizeof(*request), GFP_KERNEL);
 if (!request)
  return -ENOMEM;
 response = kmalloc(len + sizeof(*response), GFP_KERNEL);
 if (!response) {
  kfree(request);
  return -ENOMEM;
 }

 memset(request->data, 0x5A, len);

 request->len = cpu_to_le32(len);
 retval = gb_loopback_operation_sync(gb, GB_LOOPBACK_TYPE_TRANSFER,
         request, len + sizeof(*request),
         response, len + sizeof(*response));
 if (retval)
  goto gb_error;

 if (memcmp(request->data, response->data, len)) {
  dev_err(&gb->connection->bundle->dev,
   "Loopback Data doesn't match\n");
  retval = -EREMOTEIO;
 }
 gb->apbridge_latency_ts = (u32)__le32_to_cpu(response->reserved0);
 gb->gbphy_latency_ts = (u32)__le32_to_cpu(response->reserved1);

gb_error:
 kfree(request);
 kfree(response);

 return retval;
}
