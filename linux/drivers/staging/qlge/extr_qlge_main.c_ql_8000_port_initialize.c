
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int mpi_port_cfg_work; int workqueue; } ;


 int ql_mb_about_fw (struct ql_adapter*) ;
 int ql_mb_get_fw_state (struct ql_adapter*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static int ql_8000_port_initialize(struct ql_adapter *qdev)
{
 int status;




 status = ql_mb_about_fw(qdev);
 if (status)
  goto exit;
 status = ql_mb_get_fw_state(qdev);
 if (status)
  goto exit;

 queue_delayed_work(qdev->workqueue, &qdev->mpi_port_cfg_work, 0);
exit:
 return status;
}
