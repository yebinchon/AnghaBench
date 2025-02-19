
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_adapter_reset (struct ql_adapter*) ;
 int ql_adapter_up (struct ql_adapter*) ;
 int ql_configure_rings (struct ql_adapter*) ;
 int ql_get_adapter_resources (struct ql_adapter*) ;
 int ql_release_adapter_resources (struct ql_adapter*) ;

__attribute__((used)) static int qlge_open(struct net_device *ndev)
{
 int err = 0;
 struct ql_adapter *qdev = netdev_priv(ndev);

 err = ql_adapter_reset(qdev);
 if (err)
  return err;

 err = ql_configure_rings(qdev);
 if (err)
  return err;

 err = ql_get_adapter_resources(qdev);
 if (err)
  goto error_up;

 err = ql_adapter_up(qdev);
 if (err)
  goto error_up;

 return err;

error_up:
 ql_release_adapter_resources(qdev);
 return err;
}
