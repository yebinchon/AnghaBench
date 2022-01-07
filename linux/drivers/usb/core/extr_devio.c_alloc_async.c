
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async {int urb; } ;


 int GFP_KERNEL ;
 int kfree (struct async*) ;
 struct async* kzalloc (int,int ) ;
 int usb_alloc_urb (unsigned int,int ) ;

__attribute__((used)) static struct async *alloc_async(unsigned int numisoframes)
{
 struct async *as;

 as = kzalloc(sizeof(struct async), GFP_KERNEL);
 if (!as)
  return ((void*)0);
 as->urb = usb_alloc_urb(numisoframes, GFP_KERNEL);
 if (!as->urb) {
  kfree(as);
  return ((void*)0);
 }
 return as;
}
