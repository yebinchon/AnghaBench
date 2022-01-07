
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; scalar_t__ mailbox_out; } ;
struct mbox_params {int out_count; int * mbox_out; } ;


 int EBUSY ;
 int SEM_PROC_REG_MASK ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_read_mpi_reg (struct ql_adapter*,scalar_t__,int *) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;

__attribute__((used)) static int ql_get_mb_sts(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
 int i, status;

 status = ql_sem_spinlock(qdev, SEM_PROC_REG_MASK);
 if (status)
  return -EBUSY;
 for (i = 0; i < mbcp->out_count; i++) {
  status =
      ql_read_mpi_reg(qdev, qdev->mailbox_out + i,
         &mbcp->mbox_out[i]);
  if (status) {
   netif_err(qdev, drv, qdev->ndev, "Failed mailbox read.\n");
   break;
  }
 }
 ql_sem_unlock(qdev, SEM_PROC_REG_MASK);
 return status;
}
