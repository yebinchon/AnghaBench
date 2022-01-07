
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int tmp64; } ;


 int afs_extract_begin (struct afs_call*,int *,int) ;

__attribute__((used)) static inline void afs_extract_to_tmp64(struct afs_call *call)
{
 afs_extract_begin(call, &call->tmp64, sizeof(call->tmp64));
}
