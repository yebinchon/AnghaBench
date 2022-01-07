
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int fw_port_cap32_t ;


 int FW_PORT_CAP32_FC_RX ;
 int FW_PORT_CAP32_FC_TX ;
 int FW_PORT_CAP32_SPEED_100G ;
 int FW_PORT_CAP32_SPEED_100M ;
 int FW_PORT_CAP32_SPEED_10G ;
 int FW_PORT_CAP32_SPEED_1G ;
 int FW_PORT_CAP32_SPEED_25G ;
 int FW_PORT_CAP32_SPEED_40G ;
 int FW_PORT_CAP_SPEED_100G ;
 int FW_PORT_CAP_SPEED_100M ;
 int FW_PORT_CAP_SPEED_10G ;
 int FW_PORT_CAP_SPEED_1G ;
 int FW_PORT_CAP_SPEED_25G ;
 int FW_PORT_CAP_SPEED_40G ;
 int FW_PORT_CMD_LSPEED_V (int ) ;
 int FW_PORT_CMD_RXPAUSE_F ;
 int FW_PORT_CMD_TXPAUSE_F ;

fw_port_cap32_t lstatus_to_fwcap(u32 lstatus)
{
 fw_port_cap32_t linkattr = 0;





 if (lstatus & FW_PORT_CMD_RXPAUSE_F)
  linkattr |= FW_PORT_CAP32_FC_RX;
 if (lstatus & FW_PORT_CMD_TXPAUSE_F)
  linkattr |= FW_PORT_CAP32_FC_TX;
 if (lstatus & FW_PORT_CMD_LSPEED_V(FW_PORT_CAP_SPEED_100M))
  linkattr |= FW_PORT_CAP32_SPEED_100M;
 if (lstatus & FW_PORT_CMD_LSPEED_V(FW_PORT_CAP_SPEED_1G))
  linkattr |= FW_PORT_CAP32_SPEED_1G;
 if (lstatus & FW_PORT_CMD_LSPEED_V(FW_PORT_CAP_SPEED_10G))
  linkattr |= FW_PORT_CAP32_SPEED_10G;
 if (lstatus & FW_PORT_CMD_LSPEED_V(FW_PORT_CAP_SPEED_25G))
  linkattr |= FW_PORT_CAP32_SPEED_25G;
 if (lstatus & FW_PORT_CMD_LSPEED_V(FW_PORT_CAP_SPEED_40G))
  linkattr |= FW_PORT_CAP32_SPEED_40G;
 if (lstatus & FW_PORT_CMD_LSPEED_V(FW_PORT_CAP_SPEED_100G))
  linkattr |= FW_PORT_CAP32_SPEED_100G;

 return linkattr;
}
