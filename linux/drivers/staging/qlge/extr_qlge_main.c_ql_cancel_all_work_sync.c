
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int mpi_port_cfg_work; int mpi_core_to_log; int mpi_idc_work; int mpi_work; int mpi_reset_work; int asic_reset_work; int flags; } ;


 int QL_ADAPTER_UP ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ql_cancel_all_work_sync(struct ql_adapter *qdev)
{




 if (test_bit(QL_ADAPTER_UP, &qdev->flags))
  cancel_delayed_work_sync(&qdev->asic_reset_work);
 cancel_delayed_work_sync(&qdev->mpi_reset_work);
 cancel_delayed_work_sync(&qdev->mpi_work);
 cancel_delayed_work_sync(&qdev->mpi_idc_work);
 cancel_delayed_work_sync(&qdev->mpi_core_to_log);
 cancel_delayed_work_sync(&qdev->mpi_port_cfg_work);
}
