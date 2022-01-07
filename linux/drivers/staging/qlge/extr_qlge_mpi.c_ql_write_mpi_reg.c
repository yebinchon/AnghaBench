
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int PROC_ADDR ;
 int PROC_ADDR_ERR ;
 int PROC_ADDR_RDY ;
 int PROC_DATA ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int ,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;

int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data)
{
 int status = 0;

 status = ql_wait_reg_rdy(qdev, PROC_ADDR, PROC_ADDR_RDY, PROC_ADDR_ERR);
 if (status)
  goto exit;

 ql_write32(qdev, PROC_DATA, data);

 ql_write32(qdev, PROC_ADDR, reg);

 status = ql_wait_reg_rdy(qdev, PROC_ADDR, PROC_ADDR_RDY, PROC_ADDR_ERR);
 if (status)
  goto exit;
exit:
 return status;
}
