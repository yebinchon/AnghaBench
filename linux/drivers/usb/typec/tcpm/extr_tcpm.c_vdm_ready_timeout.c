
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 int CMD_ENTER_MODE ;
 int CMD_EXIT_MODE ;
 unsigned int PD_T_VDM_E_MODE ;
 unsigned int PD_T_VDM_RCVR_RSP ;
 unsigned int PD_T_VDM_SNDR_RSP ;
 unsigned int PD_T_VDM_UNSTRUCTURED ;
 unsigned int PD_T_VDM_WAIT_MODE_E ;
 int PD_VDO_CMD (int ) ;
 int PD_VDO_CMDT (int ) ;
 int PD_VDO_SVDM (int ) ;

__attribute__((used)) static unsigned int vdm_ready_timeout(u32 vdm_hdr)
{
 unsigned int timeout;
 int cmd = PD_VDO_CMD(vdm_hdr);


 if (!PD_VDO_SVDM(vdm_hdr))
  return PD_T_VDM_UNSTRUCTURED;

 switch (PD_VDO_CMDT(vdm_hdr)) {
 case 128:
  if (cmd == CMD_ENTER_MODE || cmd == CMD_EXIT_MODE)
   timeout = PD_T_VDM_WAIT_MODE_E;
  else
   timeout = PD_T_VDM_SNDR_RSP;
  break;
 default:
  if (cmd == CMD_ENTER_MODE || cmd == CMD_EXIT_MODE)
   timeout = PD_T_VDM_E_MODE;
  else
   timeout = PD_T_VDM_RCVR_RSP;
  break;
 }
 return timeout;
}
