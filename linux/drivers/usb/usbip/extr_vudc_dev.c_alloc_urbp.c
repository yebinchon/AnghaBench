
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urbp {int urb_entry; int * ep; int * urb; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct urbp* kzalloc (int,int ) ;

struct urbp *alloc_urbp(void)
{
 struct urbp *urb_p;

 urb_p = kzalloc(sizeof(*urb_p), GFP_KERNEL);
 if (!urb_p)
  return urb_p;

 urb_p->urb = ((void*)0);
 urb_p->ep = ((void*)0);
 INIT_LIST_HEAD(&urb_p->urb_entry);
 return urb_p;
}
