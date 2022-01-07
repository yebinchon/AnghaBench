
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct isci_remote_device {TYPE_3__* isci_port; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* isci_host; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;



__attribute__((used)) static inline struct device *scirdev_to_dev(struct isci_remote_device *idev)
{
 if (!idev || !idev->isci_port || !idev->isci_port->isci_host)
  return ((void*)0);

 return &idev->isci_port->isci_host->pdev->dev;
}
