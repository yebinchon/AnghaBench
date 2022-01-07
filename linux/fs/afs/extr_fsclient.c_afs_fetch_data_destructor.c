
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_read {int dummy; } ;
struct afs_call {struct afs_read* read_request; } ;


 int afs_flat_call_destructor (struct afs_call*) ;
 int afs_put_read (struct afs_read*) ;

__attribute__((used)) static void afs_fetch_data_destructor(struct afs_call *call)
{
 struct afs_read *req = call->read_request;

 afs_put_read(req);
 afs_flat_call_destructor(call);
}
