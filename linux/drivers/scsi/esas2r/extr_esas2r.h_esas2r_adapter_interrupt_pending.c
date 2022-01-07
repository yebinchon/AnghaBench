
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esas2r_adapter {int int_mask; int int_stat; } ;


 int MU_INT_STATUS_OUT ;
 int esas2r_disable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_read_register_dword (struct esas2r_adapter*,int ) ;

__attribute__((used)) static inline bool esas2r_adapter_interrupt_pending(struct esas2r_adapter *a)
{
 u32 intstat;

 if (a->int_mask == 0)
  return 0;

 intstat = esas2r_read_register_dword(a, MU_INT_STATUS_OUT);

 if ((intstat & a->int_mask) == 0)
  return 0;

 esas2r_disable_chip_interrupts(a);

 a->int_stat = intstat;
 a->int_mask = 0;

 return 1;
}
