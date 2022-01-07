
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int rnc; } ;


 int sci_remote_node_context_is_safe_to_abort (int *) ;

int isci_remote_device_is_safe_to_abort(
 struct isci_remote_device *idev)
{
 return sci_remote_node_context_is_safe_to_abort(&idev->rnc);
}
