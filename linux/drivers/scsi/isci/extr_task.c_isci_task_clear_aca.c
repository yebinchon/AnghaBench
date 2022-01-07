
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct domain_device {int dummy; } ;


 int TMF_RESP_FUNC_FAILED ;

int isci_task_clear_aca(
 struct domain_device *d_device,
 u8 *lun)
{
 return TMF_RESP_FUNC_FAILED;
}
