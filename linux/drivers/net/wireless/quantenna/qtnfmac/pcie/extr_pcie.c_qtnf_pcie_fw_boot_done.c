
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int fw_state; } ;


 int DRV_NAME ;
 int QTNF_FW_STATE_BOOT_DONE ;
 int pr_err (char*) ;
 int qtnf_core_attach (struct qtnf_bus*) ;
 int qtnf_dbg_mps_show ;
 int qtnf_dbg_msi_show ;
 int qtnf_dbg_shm_stats ;
 int qtnf_debugfs_add_entry (struct qtnf_bus*,char*,int ) ;
 int qtnf_debugfs_init (struct qtnf_bus*,int ) ;

int qtnf_pcie_fw_boot_done(struct qtnf_bus *bus)
{
 int ret;

 bus->fw_state = QTNF_FW_STATE_BOOT_DONE;
 ret = qtnf_core_attach(bus);
 if (ret) {
  pr_err("failed to attach core\n");
 } else {
  qtnf_debugfs_init(bus, DRV_NAME);
  qtnf_debugfs_add_entry(bus, "mps", qtnf_dbg_mps_show);
  qtnf_debugfs_add_entry(bus, "msi_enabled", qtnf_dbg_msi_show);
  qtnf_debugfs_add_entry(bus, "shm_stats", qtnf_dbg_shm_stats);
 }

 return ret;
}
