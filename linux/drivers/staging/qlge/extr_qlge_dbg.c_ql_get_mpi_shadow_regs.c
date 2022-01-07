
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int MPI_CORE_SH_REGS_CNT ;
 int RISC_124 ;
 int RISC_127 ;
 int SHADOW_OFFSET ;
 int SHADOW_REG_SHIFT ;
 int ql_read_mpi_reg (struct ql_adapter*,int ,int*) ;
 int ql_write_mpi_reg (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev, u32 *buf)
{
 u32 i;
 int status;

 for (i = 0; i < MPI_CORE_SH_REGS_CNT; i++, buf++) {
  status = ql_write_mpi_reg(qdev, RISC_124,
    (SHADOW_OFFSET | i << SHADOW_REG_SHIFT));
  if (status)
   goto end;
  status = ql_read_mpi_reg(qdev, RISC_127, buf);
  if (status)
   goto end;
 }
end:
 return status;
}
