
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_call {TYPE_1__* kvec; int iter; } ;
struct TYPE_2__ {size_t iov_len; void* iov_base; } ;


 int READ ;
 int iov_iter_kvec (int *,int ,TYPE_1__*,int,size_t) ;

__attribute__((used)) static inline void afs_extract_begin(struct afs_call *call, void *buf, size_t size)
{
 call->kvec[0].iov_base = buf;
 call->kvec[0].iov_len = size;
 iov_iter_kvec(&call->iter, READ, call->kvec, 1, size);
}
