
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int flags; } ;


 int AF_83XX_MBOX_INTR_ON ;
 int AF_HA_REMOVAL ;
 int AF_INTERRUPTS_ON ;
 int AF_IRQ_ATTACHED ;
 int AF_ONLINE ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8042 (struct scsi_qla_host*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qla4xxx_is_intr_poll_mode(struct scsi_qla_host *ha)
{
 int rval = 1;

 if (is_qla8032(ha) || is_qla8042(ha)) {
  if (test_bit(AF_IRQ_ATTACHED, &ha->flags) &&
      test_bit(AF_83XX_MBOX_INTR_ON, &ha->flags))
   rval = 0;
 } else {
  if (test_bit(AF_IRQ_ATTACHED, &ha->flags) &&
      test_bit(AF_INTERRUPTS_ON, &ha->flags) &&
      test_bit(AF_ONLINE, &ha->flags) &&
      !test_bit(AF_HA_REMOVAL, &ha->flags))
   rval = 0;
 }

 return rval;
}
