
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gb_loopback_transfer_response {int dummy; } ;
struct gb_loopback_transfer_request {int len; int data; } ;
struct gb_loopback {int dummy; } ;


 int ENOMEM ;
 int GB_LOOPBACK_TYPE_TRANSFER ;
 int GFP_KERNEL ;
 int cpu_to_le32 (scalar_t__) ;
 int gb_loopback_async_operation (struct gb_loopback*,int ,struct gb_loopback_transfer_request*,scalar_t__,scalar_t__,int ) ;
 int gb_loopback_async_transfer_complete ;
 int kfree (struct gb_loopback_transfer_request*) ;
 struct gb_loopback_transfer_request* kmalloc (scalar_t__,int ) ;
 int memset (int ,int,scalar_t__) ;

__attribute__((used)) static int gb_loopback_async_transfer(struct gb_loopback *gb, u32 len)
{
 struct gb_loopback_transfer_request *request;
 int retval, response_len;

 request = kmalloc(len + sizeof(*request), GFP_KERNEL);
 if (!request)
  return -ENOMEM;

 memset(request->data, 0x5A, len);

 request->len = cpu_to_le32(len);
 response_len = sizeof(struct gb_loopback_transfer_response);
 retval = gb_loopback_async_operation(gb, GB_LOOPBACK_TYPE_TRANSFER,
          request, len + sizeof(*request),
          len + response_len,
          gb_loopback_async_transfer_complete);
 if (retval)
  goto gb_error;

gb_error:
 kfree(request);
 return retval;
}
