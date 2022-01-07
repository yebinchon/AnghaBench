
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int ndev; } ;


 int SEM_RT_IDX_MASK ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_get_routing_reg (struct ql_adapter*,int,int*) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;

__attribute__((used)) static int ql_get_routing_entries(struct ql_adapter *qdev, u32 *buf)
{
 int status;
 u32 value, i;

 status = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
 if (status)
  return status;

 for (i = 0; i < 16; i++) {
  status = ql_get_routing_reg(qdev, i, &value);
  if (status) {
   netif_err(qdev, drv, qdev->ndev,
      "Failed read of routing index register\n");
   goto err;
  } else {
   *buf++ = value;
  }
 }
err:
 ql_sem_unlock(qdev, SEM_RT_IDX_MASK);
 return status;
}
