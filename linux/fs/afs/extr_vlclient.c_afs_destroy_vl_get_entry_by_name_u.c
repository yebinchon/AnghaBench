
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int ret_vldb; } ;


 int afs_flat_call_destructor (struct afs_call*) ;
 int kfree (int ) ;

__attribute__((used)) static void afs_destroy_vl_get_entry_by_name_u(struct afs_call *call)
{
 kfree(call->ret_vldb);
 afs_flat_call_destructor(call);
}
