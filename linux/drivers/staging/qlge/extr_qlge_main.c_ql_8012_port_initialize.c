
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int port_init; int xg_sem_mask; int ndev; } ;


 int GLOBAL_CFG ;
 int GLOBAL_CFG_JUMBO ;
 int GLOBAL_CFG_RESET ;
 int GLOBAL_CFG_RX_STAT_EN ;
 int GLOBAL_CFG_TX_STAT_EN ;
 int MAC_RX_PARAMS ;
 int MAC_TX_PARAMS ;
 int MAC_TX_PARAMS_JUMBO ;
 int RX_CFG ;
 int RX_CFG_EN ;
 int RX_CFG_RESET ;
 int STS ;
 int TX_CFG ;
 int TX_CFG_EN ;
 int TX_CFG_RESET ;
 int link ;
 int netif_crit (struct ql_adapter*,int ,int ,char*) ;
 int netif_info (struct ql_adapter*,int ,int ,char*) ;
 int ql_read_xgmac_reg (struct ql_adapter*,int ,int*) ;
 scalar_t__ ql_sem_trylock (struct ql_adapter*,int ) ;
 int ql_sem_unlock (struct ql_adapter*,int ) ;
 int ql_wait_reg_rdy (struct ql_adapter*,int ,int,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;
 int ql_write_xgmac_reg (struct ql_adapter*,int ,int) ;

__attribute__((used)) static int ql_8012_port_initialize(struct ql_adapter *qdev)
{
 int status = 0;
 u32 data;

 if (ql_sem_trylock(qdev, qdev->xg_sem_mask)) {



  netif_info(qdev, link, qdev->ndev,
      "Another function has the semaphore, so wait for the port init bit to come ready.\n");
  status = ql_wait_reg_rdy(qdev, STS, qdev->port_init, 0);
  if (status) {
   netif_crit(qdev, link, qdev->ndev,
       "Port initialize timed out.\n");
  }
  return status;
 }

 netif_info(qdev, link, qdev->ndev, "Got xgmac semaphore!.\n");

 status = ql_read_xgmac_reg(qdev, GLOBAL_CFG, &data);
 if (status)
  goto end;
 data |= GLOBAL_CFG_RESET;
 status = ql_write_xgmac_reg(qdev, GLOBAL_CFG, data);
 if (status)
  goto end;


 data &= ~GLOBAL_CFG_RESET;
 data |= GLOBAL_CFG_JUMBO;
 data |= GLOBAL_CFG_TX_STAT_EN;
 data |= GLOBAL_CFG_RX_STAT_EN;
 status = ql_write_xgmac_reg(qdev, GLOBAL_CFG, data);
 if (status)
  goto end;


 status = ql_read_xgmac_reg(qdev, TX_CFG, &data);
 if (status)
  goto end;
 data &= ~TX_CFG_RESET;
 data |= TX_CFG_EN;
 status = ql_write_xgmac_reg(qdev, TX_CFG, data);
 if (status)
  goto end;


 status = ql_read_xgmac_reg(qdev, RX_CFG, &data);
 if (status)
  goto end;
 data &= ~RX_CFG_RESET;
 data |= RX_CFG_EN;
 status = ql_write_xgmac_reg(qdev, RX_CFG, data);
 if (status)
  goto end;


 status =
     ql_write_xgmac_reg(qdev, MAC_TX_PARAMS, MAC_TX_PARAMS_JUMBO | (0x2580 << 16));
 if (status)
  goto end;
 status =
     ql_write_xgmac_reg(qdev, MAC_RX_PARAMS, 0x2580);
 if (status)
  goto end;


 ql_write32(qdev, STS, ((qdev->port_init << 16) | qdev->port_init));
end:
 ql_sem_unlock(qdev, qdev->xg_sem_mask);
 return status;
}
