
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_protocol_handler {int list; int uuid; int callback; } ;


 int EINVAL ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int protocol_handlers ;
 int tb_xdp_uuid ;
 scalar_t__ uuid_equal (int ,int *) ;
 int xdomain_lock ;

int tb_register_protocol_handler(struct tb_protocol_handler *handler)
{
 if (!handler->uuid || !handler->callback)
  return -EINVAL;
 if (uuid_equal(handler->uuid, &tb_xdp_uuid))
  return -EINVAL;

 mutex_lock(&xdomain_lock);
 list_add_tail(&handler->list, &protocol_handlers);
 mutex_unlock(&xdomain_lock);

 return 0;
}
