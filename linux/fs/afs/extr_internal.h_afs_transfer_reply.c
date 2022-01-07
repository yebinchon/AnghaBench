
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int dummy; } ;


 int afs_extract_data (struct afs_call*,int) ;

__attribute__((used)) static inline int afs_transfer_reply(struct afs_call *call)
{
 return afs_extract_data(call, 0);
}
