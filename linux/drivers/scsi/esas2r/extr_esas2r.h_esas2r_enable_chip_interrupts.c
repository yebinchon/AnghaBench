
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int dis_ints_cnt; } ;


 int ESAS2R_INT_ENB_MASK ;
 int MU_INT_MASK_OUT ;
 scalar_t__ atomic_dec_return (int *) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int ) ;

__attribute__((used)) static inline void esas2r_enable_chip_interrupts(struct esas2r_adapter *a)
{
 if (atomic_dec_return(&a->dis_ints_cnt) == 0)
  esas2r_write_register_dword(a, MU_INT_MASK_OUT,
         ESAS2R_INT_ENB_MASK);
}
