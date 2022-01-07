
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct port_info {int smt_idx; } ;
struct net_device {int mtu; } ;
struct neighbour {int nud_state; TYPE_2__* dev; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct cxgbit_sock {int txq_idx; int ctrlq_idx; int port_id; int rss_qid; int smac_idx; void* tx_chan; int mtu; void* l2t; scalar_t__ dcb_priority; } ;
struct TYPE_3__ {int ntxq; int nchan; int nrxq; int nports; int * rxq_ids; int l2t; } ;
struct cxgbit_device {TYPE_1__ lldi; int ** selectq; } ;
typedef int __u8 ;
typedef int __be32 ;
struct TYPE_4__ {int flags; } ;


 int CONFIG_IPV6 ;
 int ENODEV ;
 int ENOMEM ;
 int IFF_LOOPBACK ;
 scalar_t__ IS_ENABLED (int ) ;
 int NUD_VALID ;
 void* cxgb4_l2t_get (int ,struct neighbour*,struct net_device*,scalar_t__) ;
 void* cxgb4_port_chan (struct net_device*) ;
 int cxgb4_port_idx (struct net_device*) ;
 scalar_t__ cxgbit_get_iscsi_dcb_priority (struct net_device*,int) ;
 scalar_t__ cxgbit_get_iscsi_dcb_state (struct net_device*) ;
 struct net_device* cxgbit_get_real_dev (TYPE_2__*) ;
 struct net_device* cxgbit_ipv4_netdev (int ) ;
 struct net_device* cxgbit_ipv6_netdev (struct in6_addr*) ;
 int cxgbit_set_tcp_window (struct cxgbit_sock*,struct port_info*) ;
 int dst_mtu (struct dst_entry*) ;
 struct neighbour* dst_neigh_lookup (struct dst_entry*,int *) ;
 int neigh_event_send (struct neighbour*,int *) ;
 int neigh_release (struct neighbour*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int
cxgbit_offload_init(struct cxgbit_sock *csk, int iptype, __u8 *peer_ip,
      u16 local_port, struct dst_entry *dst,
      struct cxgbit_device *cdev)
{
 struct neighbour *n;
 int ret, step;
 struct net_device *ndev;
 u16 rxq_idx, port_id;




 n = dst_neigh_lookup(dst, peer_ip);
 if (!n)
  return -ENODEV;

 rcu_read_lock();
 if (!(n->nud_state & NUD_VALID))
  neigh_event_send(n, ((void*)0));

 ret = -ENOMEM;
 if (n->dev->flags & IFF_LOOPBACK) {
  if (iptype == 4)
   ndev = cxgbit_ipv4_netdev(*(__be32 *)peer_ip);
  else if (IS_ENABLED(CONFIG_IPV6))
   ndev = cxgbit_ipv6_netdev((struct in6_addr *)peer_ip);
  else
   ndev = ((void*)0);

  if (!ndev) {
   ret = -ENODEV;
   goto out;
  }

  csk->l2t = cxgb4_l2t_get(cdev->lldi.l2t,
      n, ndev, 0);
  if (!csk->l2t)
   goto out;
  csk->mtu = ndev->mtu;
  csk->tx_chan = cxgb4_port_chan(ndev);
  csk->smac_idx =
          ((struct port_info *)netdev_priv(ndev))->smt_idx;
  step = cdev->lldi.ntxq /
   cdev->lldi.nchan;
  csk->txq_idx = cxgb4_port_idx(ndev) * step;
  step = cdev->lldi.nrxq /
   cdev->lldi.nchan;
  csk->ctrlq_idx = cxgb4_port_idx(ndev);
  csk->rss_qid = cdev->lldi.rxq_ids[
    cxgb4_port_idx(ndev) * step];
  csk->port_id = cxgb4_port_idx(ndev);
  cxgbit_set_tcp_window(csk,
          (struct port_info *)netdev_priv(ndev));
 } else {
  ndev = cxgbit_get_real_dev(n->dev);
  if (!ndev) {
   ret = -ENODEV;
   goto out;
  }
  csk->l2t = cxgb4_l2t_get(cdev->lldi.l2t, n, ndev, 0);

  if (!csk->l2t)
   goto out;
  port_id = cxgb4_port_idx(ndev);
  csk->mtu = dst_mtu(dst);
  csk->tx_chan = cxgb4_port_chan(ndev);
  csk->smac_idx =
          ((struct port_info *)netdev_priv(ndev))->smt_idx;
  step = cdev->lldi.ntxq /
   cdev->lldi.nports;
  csk->txq_idx = (port_id * step) +
    (cdev->selectq[port_id][0]++ % step);
  csk->ctrlq_idx = cxgb4_port_idx(ndev);
  step = cdev->lldi.nrxq /
   cdev->lldi.nports;
  rxq_idx = (port_id * step) +
    (cdev->selectq[port_id][1]++ % step);
  csk->rss_qid = cdev->lldi.rxq_ids[rxq_idx];
  csk->port_id = port_id;
  cxgbit_set_tcp_window(csk,
          (struct port_info *)netdev_priv(ndev));
 }
 ret = 0;
out:
 rcu_read_unlock();
 neigh_release(n);
 return ret;
}
