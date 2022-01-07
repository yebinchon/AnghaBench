
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvscsi_host_data {TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int __ibmvscsi_work_to_do (struct ibmvscsi_host_data*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvscsi_work_to_do(struct ibmvscsi_host_data *hostdata)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(hostdata->host->host_lock, flags);
 rc = __ibmvscsi_work_to_do(hostdata);
 spin_unlock_irqrestore(hostdata->host->host_lock, flags);

 return rc;
}
