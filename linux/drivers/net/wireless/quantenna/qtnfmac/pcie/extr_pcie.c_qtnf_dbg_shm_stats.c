
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_4__ {int rx_packet_count; int tx_timeout_count; } ;
struct TYPE_3__ {int rx_packet_count; int tx_packet_count; } ;
struct qtnf_pcie_bus_priv {TYPE_2__ shm_ipc_ep_out; TYPE_1__ shm_ipc_ep_in; } ;
struct qtnf_bus {int dummy; } ;


 struct qtnf_bus* dev_get_drvdata (int ) ;
 struct qtnf_pcie_bus_priv* get_bus_priv (struct qtnf_bus*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int qtnf_dbg_shm_stats(struct seq_file *s, void *data)
{
 struct qtnf_bus *bus = dev_get_drvdata(s->private);
 struct qtnf_pcie_bus_priv *priv = get_bus_priv(bus);

 seq_printf(s, "shm_ipc_ep_in.tx_packet_count(%zu)\n",
     priv->shm_ipc_ep_in.tx_packet_count);
 seq_printf(s, "shm_ipc_ep_in.rx_packet_count(%zu)\n",
     priv->shm_ipc_ep_in.rx_packet_count);
 seq_printf(s, "shm_ipc_ep_out.tx_packet_count(%zu)\n",
     priv->shm_ipc_ep_out.tx_timeout_count);
 seq_printf(s, "shm_ipc_ep_out.rx_packet_count(%zu)\n",
     priv->shm_ipc_ep_out.rx_packet_count);

 return 0;
}
