
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int FCOE_CREATE_LINK_DOWN ;
 int FIP_MODE_FABRIC ;
 int _fcoe_create (struct net_device*,int ,int ) ;

__attribute__((used)) static int fcoe_ctlr_alloc(struct net_device *netdev)
{
 return _fcoe_create(netdev, FIP_MODE_FABRIC,
       FCOE_CREATE_LINK_DOWN);
}
