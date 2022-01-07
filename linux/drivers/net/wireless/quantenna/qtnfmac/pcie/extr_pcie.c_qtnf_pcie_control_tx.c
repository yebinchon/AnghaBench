
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct qtnf_pcie_bus_priv {int shm_ipc_ep_in; } ;
struct qtnf_bus {int fw_state; } ;


 int ETIMEDOUT ;
 int QTNF_FW_STATE_DEAD ;
 struct qtnf_pcie_bus_priv* get_bus_priv (struct qtnf_bus*) ;
 int pr_err (char*) ;
 int qtnf_shm_ipc_send (int *,int ,int ) ;

int qtnf_pcie_control_tx(struct qtnf_bus *bus, struct sk_buff *skb)
{
 struct qtnf_pcie_bus_priv *priv = get_bus_priv(bus);
 int ret;

 ret = qtnf_shm_ipc_send(&priv->shm_ipc_ep_in, skb->data, skb->len);

 if (ret == -ETIMEDOUT) {
  pr_err("EP firmware is dead\n");
  bus->fw_state = QTNF_FW_STATE_DEAD;
 }

 return ret;
}
