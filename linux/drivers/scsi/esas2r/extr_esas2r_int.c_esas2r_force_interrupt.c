
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int dummy; } ;


 int DRBL_DRV_VER ;
 int DRBL_FORCE_INT ;
 int MU_DOORBELL_IN ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int) ;

void esas2r_force_interrupt(struct esas2r_adapter *a)
{
 esas2r_write_register_dword(a, MU_DOORBELL_IN, DRBL_FORCE_INT |
        DRBL_DRV_VER);
}
