
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {TYPE_1__* ops; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int (* poll ) (struct rpmsg_endpoint*,struct file*,int *) ;} ;


 scalar_t__ WARN_ON (int) ;
 int stub1 (struct rpmsg_endpoint*,struct file*,int *) ;

__poll_t rpmsg_poll(struct rpmsg_endpoint *ept, struct file *filp,
   poll_table *wait)
{
 if (WARN_ON(!ept))
  return 0;
 if (!ept->ops->poll)
  return 0;

 return ept->ops->poll(ept, filp, wait);
}
