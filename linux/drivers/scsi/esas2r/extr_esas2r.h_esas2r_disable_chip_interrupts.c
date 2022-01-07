
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int dis_ints_cnt; } ;


 int ESAS2R_INT_DIS_MASK ;
 int MU_INT_MASK_OUT ;
 int atomic_inc_return (int *) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int ) ;

__attribute__((used)) static inline void esas2r_disable_chip_interrupts(struct esas2r_adapter *a)
{
 if (atomic_inc_return(&a->dis_ints_cnt) == 1)
  esas2r_write_register_dword(a, MU_INT_MASK_OUT,
         ESAS2R_INT_DIS_MASK);
}
