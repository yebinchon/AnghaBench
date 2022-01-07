
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum fip_mode { ____Placeholder_fip_mode } fip_mode ;


 int BNX2FC_CREATE_LINK_UP ;
 int _bnx2fc_create (struct net_device*,int,int ) ;

__attribute__((used)) static int bnx2fc_create(struct net_device *netdev, enum fip_mode fip_mode)
{
 return _bnx2fc_create(netdev, fip_mode, BNX2FC_CREATE_LINK_UP);
}
