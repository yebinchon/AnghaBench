
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_fs_cursor {int flags; int type; } ;
struct afs_call {int intr; int type; } ;


 int AFS_FS_CURSOR_INTR ;

__attribute__((used)) static inline void afs_set_fc_call(struct afs_call *call, struct afs_fs_cursor *fc)
{
 call->intr = fc->flags & AFS_FS_CURSOR_INTR;
 fc->type = call->type;
}
