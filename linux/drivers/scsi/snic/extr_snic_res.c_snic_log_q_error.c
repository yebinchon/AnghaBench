
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snic {unsigned int wq_count; int shost; TYPE_2__* wq; } ;
struct TYPE_4__ {TYPE_1__* ctrl; } ;
struct TYPE_3__ {int error_status; } ;


 int SNIC_HOST_ERR (int ,char*,unsigned int,scalar_t__) ;
 scalar_t__ ioread32 (int *) ;

void
snic_log_q_error(struct snic *snic)
{
 unsigned int i;
 u32 err_status;

 for (i = 0; i < snic->wq_count; i++) {
  err_status = ioread32(&snic->wq[i].ctrl->error_status);
  if (err_status)
   SNIC_HOST_ERR(snic->shost,
          "WQ[%d] error status %d\n",
          i,
          err_status);
 }
}
