
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_cb_interest {int dummy; } ;
struct afs_call {int cbi; } ;


 int afs_get_cb_interest (struct afs_cb_interest*) ;

__attribute__((used)) static inline void afs_use_fs_server(struct afs_call *call, struct afs_cb_interest *cbi)
{
 call->cbi = afs_get_cb_interest(cbi);
}
