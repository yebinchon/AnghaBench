
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mac_addr; } ;
struct adapter {TYPE_1__ eeprompriv; int bup; } ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_net_set_mac_address(struct net_device *pnetdev, void *p)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 struct sockaddr *addr = p;

 if (!padapter->bup)
  memcpy(padapter->eeprompriv.mac_addr, addr->sa_data, ETH_ALEN);

 return 0;
}
