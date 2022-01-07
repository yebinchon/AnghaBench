
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int action; } ;






 scalar_t__ kthread_should_stop () ;

__attribute__((used)) static int __ibmvscsi_work_to_do(struct ibmvscsi_host_data *hostdata)
{
 if (kthread_should_stop())
  return 1;
 switch (hostdata->action) {
 case 131:
  return 0;
 case 129:
 case 130:
 case 128:
 default:
  break;
 }

 return 1;
}
