
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urbp {int urb; } ;


 int free_urb (int ) ;
 int free_urbp (struct urbp*) ;

void free_urbp_and_urb(struct urbp *urb_p)
{
 if (!urb_p)
  return;
 free_urb(urb_p->urb);
 free_urbp(urb_p);
}
