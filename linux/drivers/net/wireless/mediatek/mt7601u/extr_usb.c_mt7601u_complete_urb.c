
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct completion* context; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

void mt7601u_complete_urb(struct urb *urb)
{
 struct completion *cmpl = urb->context;

 complete(cmpl);
}
