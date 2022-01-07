
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int ret_alist; } ;


 void afs_flat_call_destructor (struct afs_call*) ;
 int afs_put_addrlist (int ) ;

__attribute__((used)) static void afs_vl_get_addrs_u_destructor(struct afs_call *call)
{
 afs_put_addrlist(call->ret_alist);
 return afs_flat_call_destructor(call);
}
