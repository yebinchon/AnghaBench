
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int buffer; } ;


 int afs_extract_begin (struct afs_call*,int ,size_t) ;

__attribute__((used)) static inline void afs_extract_to_buf(struct afs_call *call, size_t size)
{
 afs_extract_begin(call, call->buffer, size);
}
