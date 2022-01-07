
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controlvm_message {int dummy; } ;
struct parahotplug_request {struct controlvm_message msg; int expiration; int id; } ;


 int GFP_KERNEL ;
 struct parahotplug_request* kmalloc (int,int ) ;
 int parahotplug_next_expiration () ;
 int parahotplug_next_id () ;

__attribute__((used)) static struct parahotplug_request *parahotplug_request_create(
      struct controlvm_message *msg)
{
 struct parahotplug_request *req;

 req = kmalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return ((void*)0);
 req->id = parahotplug_next_id();
 req->expiration = parahotplug_next_expiration();
 req->msg = *msg;
 return req;
}
