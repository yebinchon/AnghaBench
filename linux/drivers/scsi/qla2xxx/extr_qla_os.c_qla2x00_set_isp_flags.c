
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qla_hw_data {int port_no; int portnum; void* fw_srisc_address; int device_type; TYPE_1__* pdev; int isp_type; } ;
struct TYPE_3__ {int device; int subsystem_vendor; int subsystem_device; } ;


 int DT_EXTENDED_IDS ;
 int DT_FWI2 ;
 int DT_IIDMA ;
 int DT_ISP2031 ;
 int DT_ISP2071 ;
 int DT_ISP2081 ;
 int DT_ISP2100 ;
 int DT_ISP2200 ;
 int DT_ISP2261 ;
 int DT_ISP2271 ;
 int DT_ISP2281 ;
 int DT_ISP2300 ;
 int DT_ISP2312 ;
 int DT_ISP2322 ;
 int DT_ISP2422 ;
 int DT_ISP2432 ;
 int DT_ISP2532 ;
 int DT_ISP5422 ;
 int DT_ISP5432 ;
 int DT_ISP6312 ;
 int DT_ISP6322 ;
 int DT_ISP8001 ;
 int DT_ISP8021 ;
 int DT_ISP8031 ;
 int DT_ISP8044 ;
 int DT_ISP8432 ;
 int DT_ISPFX00 ;
 int DT_OEM_001 ;
 int DT_T10_PI ;
 int DT_ZIO_SUPPORTED ;
 scalar_t__ IS_QLA2031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int PCI_INTERRUPT_PIN ;
 void* RISC_START_ADDRESS_2100 ;
 void* RISC_START_ADDRESS_2300 ;
 void* RISC_START_ADDRESS_2400 ;
 int pci_read_config_byte (TYPE_1__*,int ,int*) ;
 int ql_dbg_init ;
 int ql_dbg_pci (int ,TYPE_1__*,int,char*,int ,int,void*) ;
 int qla82xx_init_flags (struct qla_hw_data*) ;

__attribute__((used)) static inline void
qla2x00_set_isp_flags(struct qla_hw_data *ha)
{
 ha->device_type = DT_EXTENDED_IDS;
 switch (ha->pdev->device) {
 case 149:
  ha->isp_type |= DT_ISP2100;
  ha->device_type &= ~DT_EXTENDED_IDS;
  ha->fw_srisc_address = RISC_START_ADDRESS_2100;
  break;
 case 148:
  ha->isp_type |= DT_ISP2200;
  ha->device_type &= ~DT_EXTENDED_IDS;
  ha->fw_srisc_address = RISC_START_ADDRESS_2100;
  break;
 case 143:
  ha->isp_type |= DT_ISP2300;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->fw_srisc_address = RISC_START_ADDRESS_2300;
  break;
 case 142:
  ha->isp_type |= DT_ISP2312;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->fw_srisc_address = RISC_START_ADDRESS_2300;
  break;
 case 141:
  ha->isp_type |= DT_ISP2322;
  ha->device_type |= DT_ZIO_SUPPORTED;
  if (ha->pdev->subsystem_vendor == 0x1028 &&
      ha->pdev->subsystem_device == 0x0170)
   ha->device_type |= DT_OEM_001;
  ha->fw_srisc_address = RISC_START_ADDRESS_2300;
  break;
 case 135:
  ha->isp_type |= DT_ISP6312;
  ha->fw_srisc_address = RISC_START_ADDRESS_2300;
  break;
 case 134:
  ha->isp_type |= DT_ISP6322;
  ha->fw_srisc_address = RISC_START_ADDRESS_2300;
  break;
 case 140:
  ha->isp_type |= DT_ISP2422;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 139:
  ha->isp_type |= DT_ISP2432;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 129:
  ha->isp_type |= DT_ISP8432;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 137:
  ha->isp_type |= DT_ISP5422;
  ha->device_type |= DT_FWI2;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 136:
  ha->isp_type |= DT_ISP5432;
  ha->device_type |= DT_FWI2;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 138:
  ha->isp_type |= DT_ISP2532;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 133:
  ha->isp_type |= DT_ISP8001;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 132:
  ha->isp_type |= DT_ISP8021;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;

  qla82xx_init_flags(ha);
  break;
  case 130:
  ha->isp_type |= DT_ISP8044;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;

  qla82xx_init_flags(ha);
  break;
 case 153:
  ha->isp_type |= DT_ISP2031;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->device_type |= DT_T10_PI;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 131:
  ha->isp_type |= DT_ISP8031;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->device_type |= DT_T10_PI;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 128:
  ha->isp_type |= DT_ISPFX00;
  break;
 case 152:
  ha->isp_type |= DT_ISP2071;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->device_type |= DT_T10_PI;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 146:
  ha->isp_type |= DT_ISP2271;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->device_type |= DT_T10_PI;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 147:
  ha->isp_type |= DT_ISP2261;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->device_type |= DT_T10_PI;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 151:
 case 150:
  ha->isp_type |= DT_ISP2081;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->device_type |= DT_T10_PI;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 case 145:
 case 144:
  ha->isp_type |= DT_ISP2281;
  ha->device_type |= DT_ZIO_SUPPORTED;
  ha->device_type |= DT_FWI2;
  ha->device_type |= DT_IIDMA;
  ha->device_type |= DT_T10_PI;
  ha->fw_srisc_address = RISC_START_ADDRESS_2400;
  break;
 }

 if (IS_QLA82XX(ha))
  ha->port_no = ha->portnum & 1;
 else {

  pci_read_config_byte(ha->pdev, PCI_INTERRUPT_PIN, &ha->port_no);
  if (IS_QLA25XX(ha) || IS_QLA2031(ha) ||
      IS_QLA27XX(ha) || IS_QLA28XX(ha))
   ha->port_no--;
  else
   ha->port_no = !(ha->port_no & 1);
 }

 ql_dbg_pci(ql_dbg_init, ha->pdev, 0x000b,
     "device_type=0x%x port=%d fw_srisc_address=0x%x.\n",
     ha->device_type, ha->port_no, ha->fw_srisc_address);
}
