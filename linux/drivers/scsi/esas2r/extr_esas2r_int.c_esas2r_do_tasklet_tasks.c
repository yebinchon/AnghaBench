
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esas2r_adapter {int disable_cnt; int flags; TYPE_1__* host; } ;
struct TYPE_2__ {int shost_gendev; } ;


 int AF_BUSRST_DETECTED ;
 int AF_BUSRST_NEEDED ;
 int AF_BUSRST_PENDING ;
 int AF_CHPRST_DETECTED ;
 int AF_CHPRST_NEEDED ;
 int AF_FLASHING ;
 int AF_PORT_CHANGE ;
 int DRBL_RESET_BUS ;
 int ESAS2R_LOG_WARN ;
 int MU_DOORBELL_IN ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int esas2r_chip_rst_needed_during_tasklet (struct esas2r_adapter*) ;
 int esas2r_do_deferred_processes (struct esas2r_adapter*) ;
 int esas2r_handle_chip_rst_during_tasklet (struct esas2r_adapter*) ;
 int esas2r_hdebug (char*) ;
 int esas2r_log (int ,char*) ;
 int esas2r_log_dev (int ,int *,char*) ;
 int esas2r_process_bus_reset (struct esas2r_adapter*) ;
 int esas2r_targ_db_report_changes (struct esas2r_adapter*) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int ) ;
 int scsi_report_bus_reset (TYPE_1__*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_do_tasklet_tasks(struct esas2r_adapter *a)
{

 if (test_bit(AF_CHPRST_NEEDED, &a->flags) ||
     test_bit(AF_CHPRST_DETECTED, &a->flags)) {
  if (test_bit(AF_CHPRST_NEEDED, &a->flags))
   esas2r_chip_rst_needed_during_tasklet(a);

  esas2r_handle_chip_rst_during_tasklet(a);
 }

 if (test_bit(AF_BUSRST_NEEDED, &a->flags)) {
  esas2r_hdebug("hard resetting bus");

  clear_bit(AF_BUSRST_NEEDED, &a->flags);

  if (test_bit(AF_FLASHING, &a->flags))
   set_bit(AF_BUSRST_DETECTED, &a->flags);
  else
   esas2r_write_register_dword(a, MU_DOORBELL_IN,
          DRBL_RESET_BUS);
 }

 if (test_bit(AF_BUSRST_DETECTED, &a->flags)) {
  esas2r_process_bus_reset(a);

  esas2r_log_dev(ESAS2R_LOG_WARN,
          &(a->host->shost_gendev),
          "scsi_report_bus_reset() called");

  scsi_report_bus_reset(a->host, 0);

  clear_bit(AF_BUSRST_DETECTED, &a->flags);
  clear_bit(AF_BUSRST_PENDING, &a->flags);

  esas2r_log(ESAS2R_LOG_WARN, "Bus reset complete");
 }

 if (test_bit(AF_PORT_CHANGE, &a->flags)) {
  clear_bit(AF_PORT_CHANGE, &a->flags);

  esas2r_targ_db_report_changes(a);
 }

 if (atomic_read(&a->disable_cnt) == 0)
  esas2r_do_deferred_processes(a);
}
