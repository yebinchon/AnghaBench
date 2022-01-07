
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parahotplug_request {int dummy; } ;


 int kfree (struct parahotplug_request*) ;

__attribute__((used)) static void parahotplug_request_destroy(struct parahotplug_request *req)
{
 kfree(req);
}
