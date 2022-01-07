
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_protocol_handler {int list; } ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xdomain_lock ;

void tb_unregister_protocol_handler(struct tb_protocol_handler *handler)
{
 mutex_lock(&xdomain_lock);
 list_del_init(&handler->list);
 mutex_unlock(&xdomain_lock);
}
