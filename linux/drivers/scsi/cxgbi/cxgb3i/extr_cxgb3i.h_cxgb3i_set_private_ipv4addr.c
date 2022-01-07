
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int mac_addr; } ;
struct port_info {unsigned int iscsi_ipv4addr; TYPE_1__ iscsic; } ;
struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void cxgb3i_set_private_ipv4addr(struct net_device *ndev,
      unsigned int addr)
{
 struct port_info *pi = (struct port_info *)netdev_priv(ndev);

 pi->iscsic.flags = addr ? 1 : 0;
 pi->iscsi_ipv4addr = addr;
 if (addr)
  memcpy(pi->iscsic.mac_addr, ndev->dev_addr, ETH_ALEN);
}
