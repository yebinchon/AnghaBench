
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct inode {TYPE_4__* i_mapping; } ;
struct fiemap_extent_info {int dummy; } ;
struct cifs_tcon {TYPE_2__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_6__ {int i_sb; } ;
struct cifsInodeInfo {TYPE_1__ vfs_inode; } ;
struct cifsFileInfo {int dummy; } ;
struct TCP_Server_Info {TYPE_3__* ops; } ;
struct TYPE_9__ {scalar_t__ nrpages; } ;
struct TYPE_8__ {int (* fiemap ) (struct cifs_tcon*,struct cifsFileInfo*,struct fiemap_extent_info*,int ,int ) ;} ;
struct TYPE_7__ {struct TCP_Server_Info* server; } ;


 int CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int EINVAL ;
 int ENOTSUPP ;
 int cifsFileInfo_put (struct cifsFileInfo*) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int filemap_fdatawait (TYPE_4__*) ;
 struct cifsFileInfo* find_readable_file (struct cifsInodeInfo*,int) ;
 int mapping_set_error (TYPE_4__*,int) ;
 int stub1 (struct cifs_tcon*,struct cifsFileInfo*,struct fiemap_extent_info*,int ,int ) ;

int cifs_fiemap(struct inode *inode, struct fiemap_extent_info *fei, u64 start,
  u64 len)
{
 struct cifsInodeInfo *cifs_i = CIFS_I(inode);
 struct cifs_sb_info *cifs_sb = CIFS_SB(cifs_i->vfs_inode.i_sb);
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
 struct TCP_Server_Info *server = tcon->ses->server;
 struct cifsFileInfo *cfile;
 int rc;





 if (!CIFS_CACHE_READ(CIFS_I(inode)) && inode->i_mapping &&
     inode->i_mapping->nrpages != 0) {
  rc = filemap_fdatawait(inode->i_mapping);
  if (rc) {
   mapping_set_error(inode->i_mapping, rc);
   return rc;
  }
 }

 cfile = find_readable_file(cifs_i, 0);
 if (cfile == ((void*)0))
  return -EINVAL;

 if (server->ops->fiemap) {
  rc = server->ops->fiemap(tcon, cfile, fei, start, len);
  cifsFileInfo_put(cfile);
  return rc;
 }

 cifsFileInfo_put(cfile);
 return -ENOTSUPP;
}
