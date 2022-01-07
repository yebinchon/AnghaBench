
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_error_handler {unsigned long long start; unsigned long long end; int list; scalar_t__ first_error; scalar_t__ num_errors; int aspace; } ;
struct vme_bridge {int vme_error_handlers; } ;


 int GFP_ATOMIC ;
 struct vme_error_handler* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

struct vme_error_handler *vme_register_error_handler(
 struct vme_bridge *bridge, u32 aspace,
 unsigned long long address, size_t len)
{
 struct vme_error_handler *handler;

 handler = kmalloc(sizeof(*handler), GFP_ATOMIC);
 if (!handler)
  return ((void*)0);

 handler->aspace = aspace;
 handler->start = address;
 handler->end = address + len;
 handler->num_errors = 0;
 handler->first_error = 0;
 list_add_tail(&handler->list, &bridge->vme_error_handlers);

 return handler;
}
