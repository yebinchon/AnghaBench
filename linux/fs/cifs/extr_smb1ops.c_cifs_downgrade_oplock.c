
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;


 int OPLOCK_READ ;
 int cifs_set_oplock_level (struct cifsInodeInfo*,int ) ;

__attribute__((used)) static void
cifs_downgrade_oplock(struct TCP_Server_Info *server,
   struct cifsInodeInfo *cinode, bool set_level2)
{
 if (set_level2)
  cifs_set_oplock_level(cinode, OPLOCK_READ);
 else
  cifs_set_oplock_level(cinode, 0);
}
