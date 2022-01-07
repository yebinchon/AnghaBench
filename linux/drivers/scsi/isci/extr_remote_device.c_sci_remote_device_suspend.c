
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int rnc; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
typedef enum sci_remote_node_suspension_reasons { ____Placeholder_sci_remote_node_suspension_reasons } sci_remote_node_suspension_reasons ;


 int SCI_SOFTWARE_SUSPEND_EXPECTED_EVENT ;
 int sci_remote_node_context_suspend (int *,int,int ) ;

enum sci_status sci_remote_device_suspend(struct isci_remote_device *idev,
       enum sci_remote_node_suspension_reasons reason)
{
 return sci_remote_node_context_suspend(&idev->rnc, reason,
            SCI_SOFTWARE_SUSPEND_EXPECTED_EVENT);
}
