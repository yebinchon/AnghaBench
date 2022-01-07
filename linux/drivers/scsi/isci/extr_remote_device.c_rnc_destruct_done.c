
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {scalar_t__ started_request_count; int sm; } ;


 int BUG_ON (int) ;
 int SCI_DEV_STOPPED ;
 int sci_change_state (int *,int ) ;

__attribute__((used)) static void rnc_destruct_done(void *_dev)
{
 struct isci_remote_device *idev = _dev;

 BUG_ON(idev->started_request_count != 0);
 sci_change_state(&idev->sm, SCI_DEV_STOPPED);
}
