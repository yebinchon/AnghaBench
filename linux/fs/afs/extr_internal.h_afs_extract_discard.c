
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int iter; } ;


 int READ ;
 int iov_iter_discard (int *,int ,size_t) ;

__attribute__((used)) static inline void afs_extract_discard(struct afs_call *call, size_t size)
{
 iov_iter_discard(&call->iter, READ, size);
}
