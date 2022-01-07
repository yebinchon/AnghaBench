
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int domain_dev; } ;
struct isci_host {int dummy; } ;


 struct isci_host* dev_to_ihost (int ) ;

__attribute__((used)) static inline struct isci_host *idev_to_ihost(struct isci_remote_device *idev)
{
 return dev_to_ihost(idev->domain_dev);
}
