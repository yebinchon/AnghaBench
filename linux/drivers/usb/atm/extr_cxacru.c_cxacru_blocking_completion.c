
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int context; } ;


 int complete (int ) ;

__attribute__((used)) static void cxacru_blocking_completion(struct urb *urb)
{
 complete(urb->context);
}
