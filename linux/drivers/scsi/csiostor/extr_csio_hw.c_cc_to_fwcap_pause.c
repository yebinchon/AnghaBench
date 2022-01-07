
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fw_port_cap32_t ;
typedef enum cc_pause { ____Placeholder_cc_pause } cc_pause ;


 int FW_PORT_CAP32_FC_RX ;
 int FW_PORT_CAP32_FC_TX ;
 int PAUSE_RX ;
 int PAUSE_TX ;

__attribute__((used)) static inline fw_port_cap32_t cc_to_fwcap_pause(enum cc_pause cc_pause)
{
 fw_port_cap32_t fw_pause = 0;

 if (cc_pause & PAUSE_RX)
  fw_pause |= FW_PORT_CAP32_FC_RX;
 if (cc_pause & PAUSE_TX)
  fw_pause |= FW_PORT_CAP32_FC_TX;

 return fw_pause;
}
