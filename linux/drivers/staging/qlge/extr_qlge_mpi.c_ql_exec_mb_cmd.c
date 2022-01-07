
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {scalar_t__ mailbox_in; } ;
struct mbox_params {int in_count; int * mbox_in; } ;


 int CSR ;
 int CSR_CMD_SET_H2R_INT ;
 int CSR_HRI ;
 int EIO ;
 int SEM_PROC_REG_MASK ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;
 int ql_write_mpi_reg (struct ql_adapter*,scalar_t__,int ) ;

__attribute__((used)) static int ql_exec_mb_cmd(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
 int i, status;





 if (ql_read32(qdev, CSR) & CSR_HRI)
  return -EIO;

 status = ql_sem_spinlock(qdev, SEM_PROC_REG_MASK);
 if (status)
  return status;




 for (i = 0; i < mbcp->in_count; i++) {
  status = ql_write_mpi_reg(qdev, qdev->mailbox_in + i,
      mbcp->mbox_in[i]);
  if (status)
   goto end;
 }



 ql_write32(qdev, CSR, CSR_CMD_SET_H2R_INT);
end:
 ql_sem_unlock(qdev, SEM_PROC_REG_MASK);
 return status;
}
