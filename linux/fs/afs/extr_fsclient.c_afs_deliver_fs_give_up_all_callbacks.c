
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int dummy; } ;


 int afs_transfer_reply (struct afs_call*) ;

__attribute__((used)) static int afs_deliver_fs_give_up_all_callbacks(struct afs_call *call)
{
 return afs_transfer_reply(call);
}
