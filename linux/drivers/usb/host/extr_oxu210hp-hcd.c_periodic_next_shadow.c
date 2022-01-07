
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ehci_shadow {TYPE_1__* qh; } ;
typedef int __le32 ;
struct TYPE_2__ {union ehci_shadow qh_next; } ;




__attribute__((used)) static union ehci_shadow *periodic_next_shadow(union ehci_shadow *periodic,
      __le32 tag)
{
 switch (tag) {
 default:
 case 128:
  return &periodic->qh->qh_next;
 }
}
