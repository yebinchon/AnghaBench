
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;


 int ql_idc_wait (struct ql_adapter*) ;
 int ql_mb_set_port_cfg (struct ql_adapter*) ;

__attribute__((used)) static int ql_set_port_cfg(struct ql_adapter *qdev)
{
 int status;
 status = ql_mb_set_port_cfg(qdev);
 if (status)
  return status;
 status = ql_idc_wait(qdev);
 return status;
}
