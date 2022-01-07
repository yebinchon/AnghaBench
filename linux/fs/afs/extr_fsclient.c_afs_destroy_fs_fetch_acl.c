
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int ret_acl; } ;


 int afs_flat_call_destructor (struct afs_call*) ;
 int kfree (int ) ;

__attribute__((used)) static void afs_destroy_fs_fetch_acl(struct afs_call *call)
{
 kfree(call->ret_acl);
 afs_flat_call_destructor(call);
}
