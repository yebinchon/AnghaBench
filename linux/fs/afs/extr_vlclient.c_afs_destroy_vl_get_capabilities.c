
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int vlserver; int net; } ;


 int afs_flat_call_destructor (struct afs_call*) ;
 int afs_put_vlserver (int ,int ) ;

__attribute__((used)) static void afs_destroy_vl_get_capabilities(struct afs_call *call)
{
 afs_put_vlserver(call->net, call->vlserver);
 afs_flat_call_destructor(call);
}
