
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int aha152x_internal_queue (struct scsi_cmnd*,int *,int ,void (*) (struct scsi_cmnd*)) ;

__attribute__((used)) static int aha152x_queue_lck(struct scsi_cmnd *SCpnt,
        void (*done)(struct scsi_cmnd *))
{
 return aha152x_internal_queue(SCpnt, ((void*)0), 0, done);
}
