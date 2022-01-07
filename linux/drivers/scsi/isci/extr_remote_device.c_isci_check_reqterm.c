
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isci_request {int flags; } ;
struct isci_remote_device {int dummy; } ;
struct isci_host {int scic_lock; } ;


 int IREQ_ABORT_PATH_ACTIVE ;
 scalar_t__ isci_compare_suspendcount (struct isci_remote_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool isci_check_reqterm(
 struct isci_host *ihost,
 struct isci_remote_device *idev,
 struct isci_request *ireq,
 u32 localcount)
{
 unsigned long flags;
 bool res;

 spin_lock_irqsave(&ihost->scic_lock, flags);
 res = isci_compare_suspendcount(idev, localcount)
  && !test_bit(IREQ_ABORT_PATH_ACTIVE, &ireq->flags);
 spin_unlock_irqrestore(&ihost->scic_lock, flags);

 return res;
}
