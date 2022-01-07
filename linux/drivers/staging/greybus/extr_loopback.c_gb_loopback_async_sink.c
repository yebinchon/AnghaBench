
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gb_loopback_transfer_request {int len; } ;
struct gb_loopback {int dummy; } ;


 int ENOMEM ;
 int GB_LOOPBACK_TYPE_SINK ;
 int GFP_KERNEL ;
 int cpu_to_le32 (scalar_t__) ;
 int gb_loopback_async_operation (struct gb_loopback*,int ,struct gb_loopback_transfer_request*,scalar_t__,int ,int *) ;
 int kfree (struct gb_loopback_transfer_request*) ;
 struct gb_loopback_transfer_request* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static int gb_loopback_async_sink(struct gb_loopback *gb, u32 len)
{
 struct gb_loopback_transfer_request *request;
 int retval;

 request = kmalloc(len + sizeof(*request), GFP_KERNEL);
 if (!request)
  return -ENOMEM;

 request->len = cpu_to_le32(len);
 retval = gb_loopback_async_operation(gb, GB_LOOPBACK_TYPE_SINK,
          request, len + sizeof(*request),
          0, ((void*)0));
 kfree(request);
 return retval;
}
