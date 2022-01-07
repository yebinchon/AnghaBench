
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_pb_ddata {int dummy; } ;


 int BCOVE_PBIRQ ;
 int BCOVE_PBIRQMASK ;
 int MSIC_PWRBTNM ;
 int intel_scu_ipc_update_register (int ,int ,int ) ;

__attribute__((used)) static int mrfld_setup(struct mid_pb_ddata *ddata)
{

 intel_scu_ipc_update_register(BCOVE_PBIRQ, 0, MSIC_PWRBTNM);
 intel_scu_ipc_update_register(BCOVE_PBIRQMASK, 0, MSIC_PWRBTNM);

 return 0;
}
