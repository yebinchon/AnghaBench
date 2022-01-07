
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xenvif_mcast_addr {int entry; int addr; } ;
struct xenvif {scalar_t__ fe_mcast_count; int fe_mcast_addr; int dev; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_ATOMIC ;
 scalar_t__ XEN_NETBK_MCAST_MAX ;
 int ether_addr_copy (int ,int const*) ;
 struct xenvif_mcast_addr* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int xenvif_mcast_add(struct xenvif *vif, const u8 *addr)
{
 struct xenvif_mcast_addr *mcast;

 if (vif->fe_mcast_count == XEN_NETBK_MCAST_MAX) {
  if (net_ratelimit())
   netdev_err(vif->dev,
       "Too many multicast addresses\n");
  return -ENOSPC;
 }

 mcast = kzalloc(sizeof(*mcast), GFP_ATOMIC);
 if (!mcast)
  return -ENOMEM;

 ether_addr_copy(mcast->addr, addr);
 list_add_tail_rcu(&mcast->entry, &vif->fe_mcast_addr);
 vif->fe_mcast_count++;

 return 0;
}
