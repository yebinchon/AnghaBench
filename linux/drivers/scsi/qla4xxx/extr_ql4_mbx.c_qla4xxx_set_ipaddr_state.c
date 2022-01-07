
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int ISCSI_IPDDRESS_STATE_ACQUIRING ;
 int ISCSI_IPDDRESS_STATE_DEPRECATED ;
 int ISCSI_IPDDRESS_STATE_DISABLING ;
 int ISCSI_IPDDRESS_STATE_INVALID ;
 int ISCSI_IPDDRESS_STATE_TENTATIVE ;
 int ISCSI_IPDDRESS_STATE_UNCONFIGURED ;
 int ISCSI_IPDDRESS_STATE_VALID ;

uint8_t qla4xxx_set_ipaddr_state(uint8_t fw_ipaddr_state)
{
 uint8_t ipaddr_state;

 switch (fw_ipaddr_state) {
 case 128:
  ipaddr_state = ISCSI_IPDDRESS_STATE_UNCONFIGURED;
  break;
 case 131:
  ipaddr_state = ISCSI_IPDDRESS_STATE_INVALID;
  break;
 case 134:
  ipaddr_state = ISCSI_IPDDRESS_STATE_ACQUIRING;
  break;
 case 129:
  ipaddr_state = ISCSI_IPDDRESS_STATE_TENTATIVE;
  break;
 case 133:
  ipaddr_state = ISCSI_IPDDRESS_STATE_DEPRECATED;
  break;
 case 130:
  ipaddr_state = ISCSI_IPDDRESS_STATE_VALID;
  break;
 case 132:
  ipaddr_state = ISCSI_IPDDRESS_STATE_DISABLING;
  break;
 default:
  ipaddr_state = ISCSI_IPDDRESS_STATE_UNCONFIGURED;
 }
 return ipaddr_state;
}
