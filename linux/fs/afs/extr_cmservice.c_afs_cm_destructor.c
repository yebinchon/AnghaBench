
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int * buffer; } ;


 int kfree (int *) ;

__attribute__((used)) static void afs_cm_destructor(struct afs_call *call)
{
 kfree(call->buffer);
 call->buffer = ((void*)0);
}
