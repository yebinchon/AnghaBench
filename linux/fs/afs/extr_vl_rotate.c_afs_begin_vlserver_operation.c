
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_2__ {int error; } ;
struct afs_vl_cursor {int flags; int error; TYPE_1__ ac; struct key* key; struct afs_cell* cell; } ;
struct afs_cell {int dummy; } ;


 int AFS_VL_CURSOR_STOP ;
 int EDESTADDRREQ ;
 int EINTR ;
 int SHRT_MAX ;
 int current ;
 int memset (struct afs_vl_cursor*,int ,int) ;
 scalar_t__ signal_pending (int ) ;

bool afs_begin_vlserver_operation(struct afs_vl_cursor *vc, struct afs_cell *cell,
      struct key *key)
{
 memset(vc, 0, sizeof(*vc));
 vc->cell = cell;
 vc->key = key;
 vc->error = -EDESTADDRREQ;
 vc->ac.error = SHRT_MAX;

 if (signal_pending(current)) {
  vc->error = -EINTR;
  vc->flags |= AFS_VL_CURSOR_STOP;
  return 0;
 }

 return 1;
}
