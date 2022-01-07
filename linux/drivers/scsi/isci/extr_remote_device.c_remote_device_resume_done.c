
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int sm; } ;


 int SCI_DEV_READY ;
 scalar_t__ is_remote_device_ready (struct isci_remote_device*) ;
 int sci_change_state (int *,int ) ;

__attribute__((used)) static void remote_device_resume_done(void *_dev)
{
 struct isci_remote_device *idev = _dev;

 if (is_remote_device_ready(idev))
  return;


 sci_change_state(&idev->sm, SCI_DEV_READY);
}
