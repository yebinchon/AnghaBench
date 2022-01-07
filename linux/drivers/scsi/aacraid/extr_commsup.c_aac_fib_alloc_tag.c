
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* request; } ;
struct fib {int * callback; int * callback_data; int type; TYPE_3__* hw_fib_va; } ;
struct aac_dev {struct fib* fibs; } ;
struct TYPE_5__ {scalar_t__ XferState; } ;
struct TYPE_6__ {TYPE_2__ header; } ;
struct TYPE_4__ {size_t tag; } ;


 int FSAFS_NTC_FIB_CONTEXT ;

struct fib *aac_fib_alloc_tag(struct aac_dev *dev, struct scsi_cmnd *scmd)
{
 struct fib *fibptr;

 fibptr = &dev->fibs[scmd->request->tag];




 fibptr->hw_fib_va->header.XferState = 0;
 fibptr->type = FSAFS_NTC_FIB_CONTEXT;
 fibptr->callback_data = ((void*)0);
 fibptr->callback = ((void*)0);

 return fibptr;
}
