
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlfb_deferred_free {int list; void* mem; } ;
struct dlfb_data {int deferred_free; } ;


 int GFP_KERNEL ;
 struct dlfb_deferred_free* kmalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void dlfb_deferred_vfree(struct dlfb_data *dlfb, void *mem)
{
 struct dlfb_deferred_free *d = kmalloc(sizeof(struct dlfb_deferred_free), GFP_KERNEL);
 if (!d)
  return;
 d->mem = mem;
 list_add(&d->list, &dlfb->deferred_free);
}
