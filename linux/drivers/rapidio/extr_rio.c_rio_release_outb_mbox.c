
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rio_mport {TYPE_2__* outb_msg; TYPE_1__* ops; } ;
struct TYPE_4__ {int * res; int * mcback; } ;
struct TYPE_3__ {int (* close_outb_mbox ) (struct rio_mport*,int) ;} ;


 int EINVAL ;
 int kfree (int *) ;
 int release_resource (int *) ;
 int stub1 (struct rio_mport*,int) ;

int rio_release_outb_mbox(struct rio_mport *mport, int mbox)
{
 int rc;

 if (!mport->ops->close_outb_mbox || !mport->outb_msg[mbox].res)
  return -EINVAL;

 mport->ops->close_outb_mbox(mport, mbox);
 mport->outb_msg[mbox].mcback = ((void*)0);

 rc = release_resource(mport->outb_msg[mbox].res);
 if (rc)
  return rc;

 kfree(mport->outb_msg[mbox].res);
 mport->outb_msg[mbox].res = ((void*)0);

 return 0;
}
