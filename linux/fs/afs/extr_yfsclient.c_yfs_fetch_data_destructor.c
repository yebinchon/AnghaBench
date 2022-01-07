
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int read_request; } ;


 int afs_flat_call_destructor (struct afs_call*) ;
 int afs_put_read (int ) ;

__attribute__((used)) static void yfs_fetch_data_destructor(struct afs_call *call)
{
 afs_put_read(call->read_request);
 afs_flat_call_destructor(call);
}
