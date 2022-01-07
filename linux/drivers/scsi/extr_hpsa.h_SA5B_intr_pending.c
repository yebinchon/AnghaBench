
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {scalar_t__ vaddr; } ;


 int SA5B_INTR_PENDING ;
 scalar_t__ SA5_INTR_STATUS ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool SA5B_intr_pending(struct ctlr_info *h)
{
 return readl(h->vaddr + SA5_INTR_STATUS) & SA5B_INTR_PENDING;
}
