
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int flags; } ;


 int CIFS_INODE_PENDING_OPLOCK_BREAK ;
 int clear_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

void cifs_done_oplock_break(struct cifsInodeInfo *cinode)
{
 clear_bit(CIFS_INODE_PENDING_OPLOCK_BREAK, &cinode->flags);
 wake_up_bit(&cinode->flags, CIFS_INODE_PENDING_OPLOCK_BREAK);
}
