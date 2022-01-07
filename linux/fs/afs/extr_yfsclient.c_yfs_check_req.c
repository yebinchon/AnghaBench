
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_call {void* request; size_t request_size; TYPE_1__* type; } ;
typedef int __be32 ;
struct TYPE_2__ {int name; } ;


 int pr_err (char*,int ,size_t,size_t) ;
 int pr_warning (char*,int ,size_t,size_t) ;

__attribute__((used)) static void yfs_check_req(struct afs_call *call, __be32 *bp)
{
 size_t len = (void *)bp - call->request;

 if (len > call->request_size)
  pr_err("kAFS: %s: Request buffer overflow (%zu>%u)\n",
         call->type->name, len, call->request_size);
 else if (len < call->request_size)
  pr_warning("kAFS: %s: Request buffer underflow (%zu<%u)\n",
      call->type->name, len, call->request_size);
}
