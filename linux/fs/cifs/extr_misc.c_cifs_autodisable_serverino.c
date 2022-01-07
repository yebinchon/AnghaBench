
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {char* treeName; } ;
struct cifs_sb_info {int mnt_cifs_flags; int mnt_cifs_serverino_autodisabled; scalar_t__ master_tlink; } ;


 int CIFS_MOUNT_SERVER_INUM ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;

void
cifs_autodisable_serverino(struct cifs_sb_info *cifs_sb)
{
 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_SERVER_INUM) {
  struct cifs_tcon *tcon = ((void*)0);

  if (cifs_sb->master_tlink)
   tcon = cifs_sb_master_tcon(cifs_sb);

  cifs_sb->mnt_cifs_flags &= ~CIFS_MOUNT_SERVER_INUM;
  cifs_sb->mnt_cifs_serverino_autodisabled = 1;
  cifs_dbg(VFS, "Autodisabling the use of server inode numbers on %s.\n",
    tcon ? tcon->treeName : "new server");
  cifs_dbg(VFS, "The server doesn't seem to support them properly or the files might be on different servers (DFS).\n");
  cifs_dbg(VFS, "Hardlinks will not be recognized on this mount. Consider mounting with the \"noserverino\" option to silence this message.\n");

 }
}
