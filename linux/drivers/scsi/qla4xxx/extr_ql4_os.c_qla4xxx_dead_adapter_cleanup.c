
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int flags; } ;


 int AF_INIT_DONE ;
 int AF_ONLINE ;
 int DID_NO_CONNECT ;
 int KERN_INFO ;
 int clear_bit (int ,int *) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4xxx_abort_active_cmds (struct scsi_qla_host*,int) ;
 int qla4xxx_mark_all_devices_missing (struct scsi_qla_host*) ;

void qla4xxx_dead_adapter_cleanup(struct scsi_qla_host *ha)
{
 clear_bit(AF_ONLINE, &ha->flags);


 ql4_printk(KERN_INFO, ha, "Disabling the board\n");

 qla4xxx_abort_active_cmds(ha, DID_NO_CONNECT << 16);
 qla4xxx_mark_all_devices_missing(ha);
 clear_bit(AF_INIT_DONE, &ha->flags);
}
