
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int ndev; } ;


 int EINVAL ;
 int SEM ;

 int SEM_FLASH_SHIFT ;

 int SEM_ICB_SHIFT ;

 int SEM_MAC_ADDR_SHIFT ;

 int SEM_PROBE_SHIFT ;

 int SEM_PROC_REG_SHIFT ;

 int SEM_RT_IDX_SHIFT ;
 int SEM_SET ;

 int SEM_XGMAC0_SHIFT ;

 int SEM_XGMAC1_SHIFT ;
 int netif_alert (struct ql_adapter*,int ,int ,char*) ;
 int probe ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_sem_trylock(struct ql_adapter *qdev, u32 sem_mask)
{
 u32 sem_bits = 0;

 switch (sem_mask) {
 case 129:
  sem_bits = SEM_SET << SEM_XGMAC0_SHIFT;
  break;
 case 128:
  sem_bits = SEM_SET << SEM_XGMAC1_SHIFT;
  break;
 case 134:
  sem_bits = SEM_SET << SEM_ICB_SHIFT;
  break;
 case 133:
  sem_bits = SEM_SET << SEM_MAC_ADDR_SHIFT;
  break;
 case 135:
  sem_bits = SEM_SET << SEM_FLASH_SHIFT;
  break;
 case 132:
  sem_bits = SEM_SET << SEM_PROBE_SHIFT;
  break;
 case 130:
  sem_bits = SEM_SET << SEM_RT_IDX_SHIFT;
  break;
 case 131:
  sem_bits = SEM_SET << SEM_PROC_REG_SHIFT;
  break;
 default:
  netif_alert(qdev, probe, qdev->ndev, "bad Semaphore mask!.\n");
  return -EINVAL;
 }

 ql_write32(qdev, SEM, sem_bits | sem_mask);
 return !(ql_read32(qdev, SEM) & sem_bits);
}
