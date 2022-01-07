
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union fotg210_shadow {int * hw_next; TYPE_2__* qh; } ;
struct fotg210_hcd {int dummy; } ;
typedef int __hc32 ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {int hw_next; } ;



 int hc32_to_cpu (struct fotg210_hcd*,int ) ;

__attribute__((used)) static __hc32 *shadow_next_periodic(struct fotg210_hcd *fotg210,
  union fotg210_shadow *periodic, __hc32 tag)
{
 switch (hc32_to_cpu(fotg210, tag)) {

 case 128:
  return &periodic->qh->hw->hw_next;

 default:
  return periodic->hw_next;
 }
}
