
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ql_adapter {int ndev; } ;


 int MAC_ADDR_TYPE_CAM_MAC ;
 int MAC_ADDR_TYPE_MULTI_MAC ;
 int SEM_MAC_ADDR_MASK ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_get_mac_addr_reg (struct ql_adapter*,int ,int,void**) ;
 int ql_sem_spinlock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;

__attribute__((used)) static int ql_get_cam_entries(struct ql_adapter *qdev, u32 *buf)
{
 int i, status;
 u32 value[3];

 status = ql_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 if (status)
  return status;

 for (i = 0; i < 16; i++) {
  status = ql_get_mac_addr_reg(qdev,
     MAC_ADDR_TYPE_CAM_MAC, i, value);
  if (status) {
   netif_err(qdev, drv, qdev->ndev,
      "Failed read of mac index register\n");
   goto err;
  }
  *buf++ = value[0];
  *buf++ = value[1];
  *buf++ = value[2];
 }
 for (i = 0; i < 32; i++) {
  status = ql_get_mac_addr_reg(qdev,
     MAC_ADDR_TYPE_MULTI_MAC, i, value);
  if (status) {
   netif_err(qdev, drv, qdev->ndev,
      "Failed read of mac index register\n");
   goto err;
  }
  *buf++ = value[0];
  *buf++ = value[1];
 }
err:
 ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
 return status;
}
