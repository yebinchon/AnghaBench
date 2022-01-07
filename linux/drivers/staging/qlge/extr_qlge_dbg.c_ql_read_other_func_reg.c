
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int alt_func; } ;


 int MPI_NIC_FUNCTION_SHIFT ;
 int MPI_NIC_READ ;
 int MPI_NIC_REG_BLOCK ;
 unsigned int ql_read_mpi_reg (struct ql_adapter*,int,int*) ;

__attribute__((used)) static u32 ql_read_other_func_reg(struct ql_adapter *qdev,
      u32 reg)
{
 u32 register_to_read;
 u32 reg_val;
 unsigned int status = 0;

 register_to_read = MPI_NIC_REG_BLOCK
    | MPI_NIC_READ
    | (qdev->alt_func << MPI_NIC_FUNCTION_SHIFT)
    | reg;
 status = ql_read_mpi_reg(qdev, register_to_read, &reg_val);
 if (status != 0)
  return 0xffffffff;

 return reg_val;
}
