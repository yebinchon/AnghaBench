
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int id_mask; } ;


 int ICR_ASSERT_DATA ;
 int ICR_ASSERT_SEL ;
 int ICR_BASE ;
 int INITIATOR_COMMAND_REG ;
 int NCR5380_read (int ) ;
 int NCR5380_write (int ,int) ;
 int OUTPUT_DATA_REG ;
 int PHASE_MASK ;
 int PHASE_SR_TO_TCR (int) ;
 int SELECT_ENABLE_REG ;
 int STATUS_REG ;
 int TARGET_COMMAND_REG ;
 int msleep (int) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void g_NCR5380_trigger_irq(struct Scsi_Host *instance)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);
 NCR5380_write(TARGET_COMMAND_REG,
               PHASE_SR_TO_TCR(NCR5380_read(STATUS_REG) & PHASE_MASK));
 NCR5380_write(SELECT_ENABLE_REG, hostdata->id_mask);
 NCR5380_write(OUTPUT_DATA_REG, hostdata->id_mask);
 NCR5380_write(INITIATOR_COMMAND_REG,
               ICR_BASE | ICR_ASSERT_DATA | ICR_ASSERT_SEL);

 msleep(1);

 NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE);
 NCR5380_write(SELECT_ENABLE_REG, 0);
 NCR5380_write(TARGET_COMMAND_REG, 0);
}
