
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int tmp; } ;


 int afs_extract_begin (struct afs_call*,int *,int) ;

__attribute__((used)) static inline void afs_extract_to_tmp(struct afs_call *call)
{
 afs_extract_begin(call, &call->tmp, sizeof(call->tmp));
}
