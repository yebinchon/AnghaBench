
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_error_handler {int list; } ;


 int kfree (struct vme_error_handler*) ;
 int list_del (int *) ;

void vme_unregister_error_handler(struct vme_error_handler *handler)
{
 list_del(&handler->list);
 kfree(handler);
}
