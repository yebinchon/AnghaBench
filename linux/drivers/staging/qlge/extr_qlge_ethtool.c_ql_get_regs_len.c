
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_reg_dump {int dummy; } ;
struct ql_mpi_coredump {int dummy; } ;
struct ql_adapter {int flags; } ;
struct net_device {int dummy; } ;


 int QL_FRC_COREDUMP ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ql_get_regs_len(struct net_device *ndev)
{
 struct ql_adapter *qdev = netdev_priv(ndev);

 if (!test_bit(QL_FRC_COREDUMP, &qdev->flags))
  return sizeof(struct ql_mpi_coredump);
 else
  return sizeof(struct ql_reg_dump);
}
