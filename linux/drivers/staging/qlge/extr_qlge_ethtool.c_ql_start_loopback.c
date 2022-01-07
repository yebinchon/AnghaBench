
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int link_config; int flags; int ndev; } ;


 int CFG_LOOPBACK_PCS ;
 int QL_LB_LINK_UP ;
 int clear_bit (int ,int *) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int ql_mb_set_port_cfg (struct ql_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ql_start_loopback(struct ql_adapter *qdev)
{
 if (netif_carrier_ok(qdev->ndev)) {
  set_bit(QL_LB_LINK_UP, &qdev->flags);
  netif_carrier_off(qdev->ndev);
 } else
  clear_bit(QL_LB_LINK_UP, &qdev->flags);
 qdev->link_config |= CFG_LOOPBACK_PCS;
 return ql_mb_set_port_cfg(qdev);
}
