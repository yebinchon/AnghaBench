
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; int flags; } ;


 int QL_FRC_COREDUMP ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_core_dump (struct ql_adapter*,void*) ;
 int ql_gen_reg_dump (struct ql_adapter*,void*) ;
 int ql_get_core_dump (struct ql_adapter*) ;
 int ql_soft_reset_mpi_risc (struct ql_adapter*) ;
 int test_bit (int ,int *) ;

void ql_get_dump(struct ql_adapter *qdev, void *buff)
{
 if (!test_bit(QL_FRC_COREDUMP, &qdev->flags)) {
  if (!ql_core_dump(qdev, buff))
   ql_soft_reset_mpi_risc(qdev);
  else
   netif_err(qdev, drv, qdev->ndev, "coredump failed!\n");
 } else {
  ql_gen_reg_dump(qdev, buff);
  ql_get_core_dump(qdev);
 }
}
