
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;


 int SEM_RT_IDX_MASK ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_set_routing_reg (struct ql_adapter*,int,int ,int ) ;

__attribute__((used)) static int ql_clear_routing_entries(struct ql_adapter *qdev)
{
 int i, status = 0;

 status = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
 if (status)
  return status;

 for (i = 0; i < 16; i++) {
  status = ql_set_routing_reg(qdev, i, 0, 0);
  if (status) {
   netif_err(qdev, ifup, qdev->ndev,
      "Failed to init routing register for CAM packets.\n");
   break;
  }
 }
 ql_sem_unlock(qdev, SEM_RT_IDX_MASK);
 return status;
}
