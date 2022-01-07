
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_1__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int desired_access; int create_options; int disposition; char* path; int reconnect; struct cifs_fid* fid; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_fid {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef int __u32 ;
struct TYPE_4__ {int (* open ) (unsigned int,struct cifs_open_parms*,int *,int *) ;int (* close ) (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;} ;
struct TYPE_3__ {struct TCP_Server_Info* server; } ;
typedef int FILE_ALL_INFO ;


 int CREATE_NOT_DIR ;
 int CREATE_NO_BUFFER ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int CREATE_WRITE_THROUGH ;
 int ENOMEM ;
 int ENOSYS ;
 int EOPENSTALE ;
 int ESTALE ;
 int GFP_KERNEL ;
 unsigned int O_DIRECT ;
 unsigned int O_SYNC ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int cifs_convert_flags (unsigned int) ;
 int cifs_get_disposition (unsigned int) ;
 int cifs_get_inode_info (struct inode**,char*,int *,int ,unsigned int,struct cifs_fid*) ;
 int cifs_get_inode_info_unix (struct inode**,char*,int ,unsigned int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int stub1 (unsigned int,struct cifs_open_parms*,int *,int *) ;
 int stub2 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;

__attribute__((used)) static int
cifs_nt_open(char *full_path, struct inode *inode, struct cifs_sb_info *cifs_sb,
      struct cifs_tcon *tcon, unsigned int f_flags, __u32 *oplock,
      struct cifs_fid *fid, unsigned int xid)
{
 int rc;
 int desired_access;
 int disposition;
 int create_options = CREATE_NOT_DIR;
 FILE_ALL_INFO *buf;
 struct TCP_Server_Info *server = tcon->ses->server;
 struct cifs_open_parms oparms;

 if (!server->ops->open)
  return -ENOSYS;

 desired_access = cifs_convert_flags(f_flags);
 disposition = cifs_get_disposition(f_flags);



 buf = kmalloc(sizeof(FILE_ALL_INFO), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;


 if (f_flags & O_SYNC)
  create_options |= CREATE_WRITE_THROUGH;

 if (f_flags & O_DIRECT)
  create_options |= CREATE_NO_BUFFER;

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = desired_access;
 oparms.create_options = create_options;
 oparms.disposition = disposition;
 oparms.path = full_path;
 oparms.fid = fid;
 oparms.reconnect = 0;

 rc = server->ops->open(xid, &oparms, oplock, buf);

 if (rc)
  goto out;

 if (tcon->unix_ext)
  rc = cifs_get_inode_info_unix(&inode, full_path, inode->i_sb,
           xid);
 else
  rc = cifs_get_inode_info(&inode, full_path, buf, inode->i_sb,
      xid, fid);

 if (rc) {
  server->ops->close(xid, tcon, fid);
  if (rc == -ESTALE)
   rc = -EOPENSTALE;
 }

out:
 kfree(buf);
 return rc;
}
