
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifsInodeInfo {int dummy; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_oplock_level ) (struct cifsInodeInfo*,int ,int ,int *) ;} ;


 int SMB2_OPLOCK_LEVEL_II ;
 int stub1 (struct cifsInodeInfo*,int ,int ,int *) ;
 int stub2 (struct cifsInodeInfo*,int ,int ,int *) ;

__attribute__((used)) static void
smb2_downgrade_oplock(struct TCP_Server_Info *server,
   struct cifsInodeInfo *cinode, bool set_level2)
{
 if (set_level2)
  server->ops->set_oplock_level(cinode, SMB2_OPLOCK_LEVEL_II,
      0, ((void*)0));
 else
  server->ops->set_oplock_level(cinode, 0, 0, ((void*)0));
}
