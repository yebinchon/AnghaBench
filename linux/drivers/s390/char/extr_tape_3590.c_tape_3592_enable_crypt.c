
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;


 scalar_t__ IS_ERR (struct tape_request*) ;
 int PTR_ERR (struct tape_request*) ;
 struct tape_request* __tape_3592_enable_crypt (struct tape_device*) ;
 int tape_do_io_free (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int tape_3592_enable_crypt(struct tape_device *device)
{
 struct tape_request *request;

 request = __tape_3592_enable_crypt(device);
 if (IS_ERR(request))
  return PTR_ERR(request);
 return tape_do_io_free(device, request);
}
