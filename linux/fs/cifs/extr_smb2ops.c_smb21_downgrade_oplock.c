
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifsInodeInfo {int dummy; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_oplock_level ) (struct cifsInodeInfo*,int ,int ,int *) ;} ;


 int SMB2_LEASE_READ_CACHING_HE ;
 int stub1 (struct cifsInodeInfo*,int ,int ,int *) ;

__attribute__((used)) static void
smb21_downgrade_oplock(struct TCP_Server_Info *server,
         struct cifsInodeInfo *cinode, bool set_level2)
{
 server->ops->set_oplock_level(cinode,
          set_level2 ? SMB2_LEASE_READ_CACHING_HE :
          0, 0, ((void*)0));
}
