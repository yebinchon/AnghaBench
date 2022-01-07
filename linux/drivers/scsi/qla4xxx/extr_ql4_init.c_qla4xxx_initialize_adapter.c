
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int host_no; int flags; TYPE_1__* isp_ops; scalar_t__ eeprom_cmd_data; } ;
struct TYPE_2__ {int (* start_firmware ) (struct scsi_qla_host*) ;int (* get_sys_info ) (struct scsi_qla_host*) ;int (* disable_intrs ) (struct scsi_qla_host*) ;int (* pci_config ) (struct scsi_qla_host*) ;} ;


 int AF_ONLINE ;
 int DEBUG2 (int ) ;
 int KERN_INFO ;
 int QLA_ERROR ;
 int RESET_ADAPTER ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8042 (struct scsi_qla_host*) ;
 int printk (char*,int ,char*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_83xx_enable_mbox_intrs (struct scsi_qla_host*) ;
 int qla4xxx_about_firmware (struct scsi_qla_host*) ;
 int qla4xxx_build_ddb_list (struct scsi_qla_host*,int) ;
 int qla4xxx_init_firmware (struct scsi_qla_host*) ;
 int qla4xxx_init_local_data (struct scsi_qla_host*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct scsi_qla_host*) ;
 int stub2 (struct scsi_qla_host*) ;
 int stub3 (struct scsi_qla_host*) ;
 int stub4 (struct scsi_qla_host*) ;

int qla4xxx_initialize_adapter(struct scsi_qla_host *ha, int is_reset)
{
 int status = QLA_ERROR;

 ha->eeprom_cmd_data = 0;

 ql4_printk(KERN_INFO, ha, "Configuring PCI space...\n");
 ha->isp_ops->pci_config(ha);

 ha->isp_ops->disable_intrs(ha);


 if (ha->isp_ops->start_firmware(ha) == QLA_ERROR)
  goto exit_init_hba;
 if (is_qla8032(ha) || is_qla8042(ha))
  qla4_83xx_enable_mbox_intrs(ha);

 if (qla4xxx_about_firmware(ha) == QLA_ERROR)
  goto exit_init_hba;

 if (ha->isp_ops->get_sys_info(ha) == QLA_ERROR)
  goto exit_init_hba;

 qla4xxx_init_local_data(ha);

 status = qla4xxx_init_firmware(ha);
 if (status == QLA_ERROR)
  goto exit_init_hba;

 if (is_reset == RESET_ADAPTER)
  qla4xxx_build_ddb_list(ha, is_reset);

 set_bit(AF_ONLINE, &ha->flags);

exit_init_hba:
 DEBUG2(printk("scsi%ld: initialize adapter: %s\n", ha->host_no,
     status == QLA_ERROR ? "FAILED" : "SUCCEEDED"));
 return status;
}
