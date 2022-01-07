
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urbp {int dummy; } ;


 int kfree (struct urbp*) ;

__attribute__((used)) static void free_urbp(struct urbp *urb_p)
{
 kfree(urb_p);
}
