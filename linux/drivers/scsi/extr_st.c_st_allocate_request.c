
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_request {struct scsi_tape* stp; } ;
struct scsi_tape {TYPE_1__* buffer; } ;
struct TYPE_2__ {int syscall_result; } ;


 int EBUSY ;
 int EINTR ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int current ;
 struct st_request* kzalloc (int,int ) ;
 scalar_t__ signal_pending (int ) ;
 int st_printk (int ,struct scsi_tape*,char*) ;

__attribute__((used)) static struct st_request *st_allocate_request(struct scsi_tape *stp)
{
 struct st_request *streq;

 streq = kzalloc(sizeof(*streq), GFP_KERNEL);
 if (streq)
  streq->stp = stp;
 else {
  st_printk(KERN_ERR, stp,
     "Can't get SCSI request.\n");
  if (signal_pending(current))
   stp->buffer->syscall_result = -EINTR;
  else
   stp->buffer->syscall_result = -EBUSY;
 }

 return streq;
}
