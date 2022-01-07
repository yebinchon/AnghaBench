
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_3__ {int issue; int disconnected; } ;
struct TYPE_4__ {TYPE_1__ queues; } ;
typedef TYPE_2__ FAS216_Info ;


 int queue_free (int *) ;

void fas216_release(struct Scsi_Host *host)
{
 FAS216_Info *info = (FAS216_Info *)host->hostdata;

 queue_free(&info->queues.disconnected);
 queue_free(&info->queues.issue);
}
