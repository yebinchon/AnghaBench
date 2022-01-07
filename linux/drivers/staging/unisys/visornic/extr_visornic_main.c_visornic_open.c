
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int VISORNIC_INFINITE_RSP_WAIT ;
 int visornic_enable_with_timeout (struct net_device*,int ) ;

__attribute__((used)) static int visornic_open(struct net_device *netdev)
{
 visornic_enable_with_timeout(netdev, VISORNIC_INFINITE_RSP_WAIT);
 return 0;
}
