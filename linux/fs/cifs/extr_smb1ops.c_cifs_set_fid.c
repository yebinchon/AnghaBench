
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_fid {int netfid; } ;
struct cifsInodeInfo {int can_cache_brlcks; } ;
struct TYPE_2__ {int netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; int dentry; } ;
typedef int __u32 ;


 int CIFS_CACHE_WRITE (struct cifsInodeInfo*) ;
 struct cifsInodeInfo* CIFS_I (int ) ;
 int cifs_set_oplock_level (struct cifsInodeInfo*,int ) ;
 int d_inode (int ) ;

__attribute__((used)) static void
cifs_set_fid(struct cifsFileInfo *cfile, struct cifs_fid *fid, __u32 oplock)
{
 struct cifsInodeInfo *cinode = CIFS_I(d_inode(cfile->dentry));
 cfile->fid.netfid = fid->netfid;
 cifs_set_oplock_level(cinode, oplock);
 cinode->can_cache_brlcks = CIFS_CACHE_WRITE(cinode);
}
