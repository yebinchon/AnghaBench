
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int dummy; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int sci_remote_device_terminate_reqs_checkabort (struct isci_remote_device*,int ) ;

enum sci_status sci_remote_device_terminate_requests(
 struct isci_remote_device *idev)
{
 return sci_remote_device_terminate_reqs_checkabort(idev, 0);
}
