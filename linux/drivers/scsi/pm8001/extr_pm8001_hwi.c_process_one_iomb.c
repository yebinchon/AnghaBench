
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm8001_hba_info {int dummy; } ;
typedef int __le32 ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int mpi_hw_event (struct pm8001_hba_info*,void*) ;
 int mpi_sata_completion (struct pm8001_hba_info*,void*) ;
 int mpi_sata_event (struct pm8001_hba_info*,void*) ;
 int mpi_smp_completion (struct pm8001_hba_info*,void*) ;
 int mpi_ssp_completion (struct pm8001_hba_info*,void*) ;
 int mpi_ssp_event (struct pm8001_hba_info*,void*) ;
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

__attribute__((used)) static void process_one_iomb(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 __le32 pHeader = *(__le32 *)piomb;
 u8 opc = (u8)((le32_to_cpu(pHeader)) & 0xFFF);

 PM8001_MSG_DBG(pm8001_ha, pm8001_printk("process_one_iomb:"));

 switch (opc) {
 case 155:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk("OPC_OUB_ECHO\n"));
  break;
 case 146:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_HW_EVENT\n"));
  mpi_hw_event(pm8001_ha, piomb);
  break;
 case 130:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_COMP\n"));
  mpi_ssp_completion(pm8001_ha, piomb);
  break;
 case 132:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SMP_COMP\n"));
  mpi_smp_completion(pm8001_ha, piomb);
  break;
 case 145:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_LOCAL_PHY_CNTRL\n"));
  pm8001_mpi_local_phy_ctl(pm8001_ha, piomb);
  break;
 case 156:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_DEV_REGIST\n"));
  pm8001_mpi_reg_resp(pm8001_ha, piomb);
  break;
 case 160:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("unregister the device\n"));
  pm8001_mpi_dereg_resp(pm8001_ha, piomb);
  break;
 case 151:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_DEV_HANDLE\n"));
  break;
 case 138:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SATA_COMP\n"));
  mpi_sata_completion(pm8001_ha, piomb);
  break;
 case 137:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SATA_EVENT\n"));
  mpi_sata_event(pm8001_ha, piomb);
  break;
 case 129:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_EVENT\n"));
  mpi_ssp_event(pm8001_ha, piomb);
  break;
 case 158:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_DEV_HANDLE_ARRIV\n"));

  break;
 case 128:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_RECV_EVENT\n"));

  break;
 case 157:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_DEV_INFO\n"));
  break;
 case 154:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_FW_FLASH_UPDATE\n"));
  pm8001_mpi_fw_flash_update_resp(pm8001_ha, piomb);
  break;
 case 147:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GPIO_RESPONSE\n"));
  break;
 case 148:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GPIO_EVENT\n"));
  break;
 case 153:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GENERAL_EVENT\n"));
  pm8001_mpi_general_event(pm8001_ha, piomb);
  break;
 case 131:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SSP_ABORT_RSP\n"));
  pm8001_mpi_task_abort_resp(pm8001_ha, piomb);
  break;
 case 139:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SATA_ABORT_RSP\n"));
  pm8001_mpi_task_abort_resp(pm8001_ha, piomb);
  break;
 case 142:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SAS_DIAG_MODE_START_END\n"));
  break;
 case 143:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SAS_DIAG_EXECUTE\n"));
  break;
 case 149:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_TIME_STAMP\n"));
  break;
 case 141:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SAS_HW_EVENT_ACK\n"));
  break;
 case 144:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_PORT_CONTROL\n"));
  break;
 case 133:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SMP_ABORT_RSP\n"));
  pm8001_mpi_task_abort_resp(pm8001_ha, piomb);
  break;
 case 150:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_NVMD_DATA\n"));
  pm8001_mpi_get_nvmd_resp(pm8001_ha, piomb);
  break;
 case 134:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SET_NVMD_DATA\n"));
  pm8001_mpi_set_nvmd_resp(pm8001_ha, piomb);
  break;
 case 159:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_DEVICE_HANDLE_REMOVAL\n"));
  break;
 case 136:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SET_DEVICE_STATE\n"));
  pm8001_mpi_set_dev_state_resp(pm8001_ha, piomb);
  break;
 case 152:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_GET_DEVICE_STATE\n"));
  break;
 case 135:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SET_DEV_INFO\n"));
  break;
 case 140:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("OPC_OUB_SAS_RE_INITIALIZE\n"));
  break;
 default:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("Unknown outbound Queue IOMB OPC = %x\n",
   opc));
  break;
 }
}
