
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union fotg210_shadow {TYPE_3__* itd; TYPE_2__* fstn; TYPE_1__* qh; } ;
struct fotg210_hcd {int dummy; } ;
typedef int __hc32 ;
struct TYPE_6__ {union fotg210_shadow itd_next; } ;
struct TYPE_5__ {union fotg210_shadow fstn_next; } ;
struct TYPE_4__ {union fotg210_shadow qh_next; } ;




 int hc32_to_cpu (struct fotg210_hcd*,int ) ;

__attribute__((used)) static union fotg210_shadow *periodic_next_shadow(struct fotg210_hcd *fotg210,
  union fotg210_shadow *periodic, __hc32 tag)
{
 switch (hc32_to_cpu(fotg210, tag)) {
 case 128:
  return &periodic->qh->qh_next;
 case 129:
  return &periodic->fstn->fstn_next;
 default:
  return &periodic->itd->itd_next;
 }
}
