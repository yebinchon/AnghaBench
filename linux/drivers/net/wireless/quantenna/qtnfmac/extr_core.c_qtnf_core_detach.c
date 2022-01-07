
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_bus {int * hprio_workqueue; int * workqueue; int fw_state; } ;


 int QTNF_FW_STATE_DETACHED ;
 unsigned int QTNF_MAX_MAC ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int qtnf_bus_data_rx_stop (struct qtnf_bus*) ;
 int qtnf_cmd_send_deinit_fw (struct qtnf_bus*) ;
 int qtnf_core_mac_detach (struct qtnf_bus*,unsigned int) ;
 scalar_t__ qtnf_fw_is_up (struct qtnf_bus*) ;
 int qtnf_trans_free (struct qtnf_bus*) ;

void qtnf_core_detach(struct qtnf_bus *bus)
{
 unsigned int macid;

 qtnf_bus_data_rx_stop(bus);

 for (macid = 0; macid < QTNF_MAX_MAC; macid++)
  qtnf_core_mac_detach(bus, macid);

 if (qtnf_fw_is_up(bus))
  qtnf_cmd_send_deinit_fw(bus);

 bus->fw_state = QTNF_FW_STATE_DETACHED;

 if (bus->workqueue) {
  flush_workqueue(bus->workqueue);
  destroy_workqueue(bus->workqueue);
  bus->workqueue = ((void*)0);
 }

 if (bus->hprio_workqueue) {
  flush_workqueue(bus->hprio_workqueue);
  destroy_workqueue(bus->hprio_workqueue);
  bus->hprio_workqueue = ((void*)0);
 }

 qtnf_trans_free(bus);
}
