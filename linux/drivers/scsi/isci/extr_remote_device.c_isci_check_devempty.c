
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isci_remote_device {scalar_t__ started_request_count; } ;
struct isci_host {int scic_lock; } ;


 scalar_t__ isci_compare_suspendcount (struct isci_remote_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool isci_check_devempty(
 struct isci_host *ihost,
 struct isci_remote_device *idev,
 u32 localcount)
{
 unsigned long flags;
 bool res;

 spin_lock_irqsave(&ihost->scic_lock, flags);
 res = isci_compare_suspendcount(idev, localcount)
  && idev->started_request_count == 0;
 spin_unlock_irqrestore(&ihost->scic_lock, flags);

 return res;
}
