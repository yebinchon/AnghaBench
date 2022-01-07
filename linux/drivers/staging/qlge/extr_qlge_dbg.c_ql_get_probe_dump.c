
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;


 int MPI_TEST_FUNC_PRB_CTL ;
 int MPI_TEST_FUNC_PRB_EN ;
 int PRB_MX_ADDR_FC_CLOCK ;
 int PRB_MX_ADDR_PCI_CLOCK ;
 int PRB_MX_ADDR_SYS_CLOCK ;
 int PRB_MX_ADDR_VALID_FC_MOD ;
 int PRB_MX_ADDR_VALID_PCI_MOD ;
 int PRB_MX_ADDR_VALID_SYS_MOD ;
 int PRB_MX_ADDR_VALID_XGM_MOD ;
 int PRB_MX_ADDR_XGM_CLOCK ;
 unsigned int* ql_get_probe (struct ql_adapter*,int ,int ,unsigned int*) ;
 int ql_write_mpi_reg (struct ql_adapter*,int ,int ) ;

__attribute__((used)) static int ql_get_probe_dump(struct ql_adapter *qdev, unsigned int *buf)
{

 ql_write_mpi_reg(qdev, MPI_TEST_FUNC_PRB_CTL, MPI_TEST_FUNC_PRB_EN);
 buf = ql_get_probe(qdev, PRB_MX_ADDR_SYS_CLOCK,
   PRB_MX_ADDR_VALID_SYS_MOD, buf);
 buf = ql_get_probe(qdev, PRB_MX_ADDR_PCI_CLOCK,
   PRB_MX_ADDR_VALID_PCI_MOD, buf);
 buf = ql_get_probe(qdev, PRB_MX_ADDR_XGM_CLOCK,
   PRB_MX_ADDR_VALID_XGM_MOD, buf);
 buf = ql_get_probe(qdev, PRB_MX_ADDR_FC_CLOCK,
   PRB_MX_ADDR_VALID_FC_MOD, buf);
 return 0;

}
