
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;
typedef int __le32 ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int mpi_dek_management_resp (struct pm8001_hba_info*,void*) ;
 int mpi_flash_op_ext_resp (struct pm8001_hba_info*,void*) ;
 int mpi_get_controller_config_resp (struct pm8001_hba_info*,void*) ;
 int mpi_get_phy_profile_resp (struct pm8001_hba_info*,void*) ;
 int mpi_hw_event (struct pm8001_hba_info*,void*) ;
 int mpi_kek_management_resp (struct pm8001_hba_info*,void*) ;
 int mpi_phy_start_resp (struct pm8001_hba_info*,void*) ;
 int mpi_phy_stop_resp (struct pm8001_hba_info*,void*) ;
 int mpi_sata_completion (struct pm8001_hba_info*,void*) ;
 int mpi_sata_event (struct pm8001_hba_info*,void*) ;
 int mpi_set_controller_config_resp (struct pm8001_hba_info*,void*) ;
 int mpi_set_phy_profile_resp (struct pm8001_hba_info*,void*) ;
 int mpi_smp_completion (struct pm8001_hba_info*,void*) ;
 int mpi_ssp_completion (struct pm8001_hba_info*,void*) ;
 int mpi_ssp_event (struct pm8001_hba_info*,void*) ;
 int mpi_thermal_hw_event (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_dereg_resp (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_fw_flash_update_resp (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_general_event (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_get_nvmd_resp (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_local_phy_ctl (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_reg_resp (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_set_dev_state_resp (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_set_nvmd_resp (struct pm8001_hba_info*,void*) ;
 int pm8001_mpi_task_abort_resp (struct pm8001_hba_info*,void*) ;
 int pm8001_printk (char*,...) ;
 int ssp_coalesced_comp_resp (struct pm8001_hba_info*,void*) ;

__attribute__((used)) static void process_one_iomb(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 __le32 pHeader = *(__le32 *)piomb;
 u32 opc = (u32)((le32_to_cpu(pHeader)) & 0xFFF);

 switch (opc) {
 case 164:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk("OPC_OUB_ECHO\n"));
  break;
 case 152:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_HW_EVENT\n"));
  mpi_hw_event(pm8001_ha, piomb);
  break;
 case 128:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_THERMAL_EVENT\n"));
  mpi_thermal_hw_event(pm8001_ha, piomb);
  break;
 case 131:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_COMP\n"));
  mpi_ssp_completion(pm8001_ha, piomb);
  break;
 case 134:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SMP_COMP\n"));
  mpi_smp_completion(pm8001_ha, piomb);
  break;
 case 150:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_LOCAL_PHY_CNTRL\n"));
  pm8001_mpi_local_phy_ctl(pm8001_ha, piomb);
  break;
 case 165:
  PM8001_MSG_DBG(pm8001_ha,
  pm8001_printk("OPC_OUB_DEV_REGIST\n"));
  pm8001_mpi_reg_resp(pm8001_ha, piomb);
  break;
 case 168:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("unregister the device\n"));
  pm8001_mpi_dereg_resp(pm8001_ha, piomb);
  break;
 case 158:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_DEV_HANDLE\n"));
  break;
 case 142:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SATA_COMP\n"));
  mpi_sata_completion(pm8001_ha, piomb);
  break;
 case 141:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SATA_EVENT\n"));
  mpi_sata_event(pm8001_ha, piomb);
  break;
 case 130:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_EVENT\n"));
  mpi_ssp_event(pm8001_ha, piomb);
  break;
 case 166:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_DEV_HANDLE_ARRIV\n"));

  break;
 case 129:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_RECV_EVENT\n"));

  break;
 case 162:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_FW_FLASH_UPDATE\n"));
  pm8001_mpi_fw_flash_update_resp(pm8001_ha, piomb);
  break;
 case 153:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GPIO_RESPONSE\n"));
  break;
 case 154:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GPIO_EVENT\n"));
  break;
 case 161:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GENERAL_EVENT\n"));
  pm8001_mpi_general_event(pm8001_ha, piomb);
  break;
 case 133:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_ABORT_RSP\n"));
  pm8001_mpi_task_abort_resp(pm8001_ha, piomb);
  break;
 case 143:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SATA_ABORT_RSP\n"));
  pm8001_mpi_task_abort_resp(pm8001_ha, piomb);
  break;
 case 145:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SAS_DIAG_MODE_START_END\n"));
  break;
 case 146:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SAS_DIAG_EXECUTE\n"));
  break;
 case 155:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_TIME_STAMP\n"));
  break;
 case 144:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SAS_HW_EVENT_ACK\n"));
  break;
 case 147:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_PORT_CONTROL\n"));
  break;
 case 135:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SMP_ABORT_RSP\n"));
  pm8001_mpi_task_abort_resp(pm8001_ha, piomb);
  break;
 case 157:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_NVMD_DATA\n"));
  pm8001_mpi_get_nvmd_resp(pm8001_ha, piomb);
  break;
 case 137:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SET_NVMD_DATA\n"));
  pm8001_mpi_set_nvmd_resp(pm8001_ha, piomb);
  break;
 case 167:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_DEVICE_HANDLE_REMOVAL\n"));
  break;
 case 139:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SET_DEVICE_STATE\n"));
  pm8001_mpi_set_dev_state_resp(pm8001_ha, piomb);
  break;
 case 159:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_DEVICE_STATE\n"));
  break;
 case 138:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SET_DEV_INFO\n"));
  break;

 case 149:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_PHY_START_RESP opcode:%x\n", opc));
  mpi_phy_start_resp(pm8001_ha, piomb);
  break;
 case 148:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_PHY_STOP_RESP opcode:%x\n", opc));
  mpi_phy_stop_resp(pm8001_ha, piomb);
  break;
 case 140:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_SET_CONTROLLER_CONFIG opcode:%x\n", opc));
  mpi_set_controller_config_resp(pm8001_ha, piomb);
  break;
 case 160:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_GET_CONTROLLER_CONFIG opcode:%x\n", opc));
  mpi_get_controller_config_resp(pm8001_ha, piomb);
  break;
 case 156:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_GET_PHY_PROFILE opcode:%x\n", opc));
  mpi_get_phy_profile_resp(pm8001_ha, piomb);
  break;
 case 163:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_FLASH_OP_EXT opcode:%x\n", opc));
  mpi_flash_op_ext_resp(pm8001_ha, piomb);
  break;
 case 136:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_SET_PHY_PROFILE opcode:%x\n", opc));
  mpi_set_phy_profile_resp(pm8001_ha, piomb);
  break;
 case 151:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_KEK_MANAGEMENT_RESP opcode:%x\n", opc));
  mpi_kek_management_resp(pm8001_ha, piomb);
  break;
 case 169:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_DEK_MANAGEMENT_RESP opcode:%x\n", opc));
  mpi_dek_management_resp(pm8001_ha, piomb);
  break;
 case 132:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "OPC_OUB_SSP_COALESCED_COMP_RESP opcode:%x\n", opc));
  ssp_coalesced_comp_resp(pm8001_ha, piomb);
  break;
 default:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
   "Unknown outbound Queue IOMB OPC = 0x%x\n", opc));
  break;
 }
}
