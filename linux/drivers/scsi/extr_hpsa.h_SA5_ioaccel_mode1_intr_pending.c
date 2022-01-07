
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {scalar_t__ vaddr; } ;


 scalar_t__ SA5_INTR_STATUS ;
 unsigned long SA5_IOACCEL_MODE1_INTR_STATUS_CMP_BIT ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static bool SA5_ioaccel_mode1_intr_pending(struct ctlr_info *h)
{
 unsigned long register_value = readl(h->vaddr + SA5_INTR_STATUS);

 return (register_value & SA5_IOACCEL_MODE1_INTR_STATUS_CMP_BIT) ?
  1 : 0;
}
