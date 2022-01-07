
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct win_dev {void* minor; void* major; int type; } ;
struct kvec {int iov_len; int * iov_base; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifs_open_parms {int create_options; char* path; int reconnect; struct cifs_fid* fid; int disposition; int desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int pid; } ;
struct cifs_fid {int dummy; } ;
typedef int dev_t ;
typedef scalar_t__ __u32 ;
struct TYPE_8__ {int tgid; } ;
struct TYPE_7__ {TYPE_2__* server; } ;
struct TYPE_6__ {TYPE_1__* ops; scalar_t__ oplocks; } ;
struct TYPE_5__ {int (* open ) (unsigned int,struct cifs_open_parms*,scalar_t__*,int *) ;int (* sync_write ) (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ;int (* close ) (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;} ;
typedef int FILE_ALL_INFO ;


 int CIFS_MOUNT_UNX_EMUL ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CREATE_NOT_DIR ;
 int CREATE_OPEN_BACKUP_INTENT ;
 int CREATE_OPTION_SPECIAL ;
 int ENOMEM ;
 int EPERM ;
 int FILE_CREATE ;
 int FYI ;
 int GENERIC_WRITE ;
 int GFP_KERNEL ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 scalar_t__ REQ_OPLOCK ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int cifs_dbg (int ,char*) ;
 void* cpu_to_le64 (int ) ;
 TYPE_4__* current ;
 int d_drop (struct dentry*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int ,char*,int) ;
 int stub1 (unsigned int,struct cifs_open_parms*,scalar_t__*,int *) ;
 int stub2 (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ;
 int stub3 (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ;
 int stub4 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;

__attribute__((used)) static int
smb2_make_node(unsigned int xid, struct inode *inode,
        struct dentry *dentry, struct cifs_tcon *tcon,
        char *full_path, umode_t mode, dev_t dev)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 int rc = -EPERM;
 int create_options = CREATE_NOT_DIR | CREATE_OPTION_SPECIAL;
 FILE_ALL_INFO *buf = ((void*)0);
 struct cifs_io_parms io_parms;
 __u32 oplock = 0;
 struct cifs_fid fid;
 struct cifs_open_parms oparms;
 unsigned int bytes_written;
 struct win_dev *pdev;
 struct kvec iov[2];







 if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_UNX_EMUL))
  goto out;







 if (!S_ISCHR(mode) && !S_ISBLK(mode))
  goto out;

 cifs_dbg(FYI, "sfu compat create special file\n");

 buf = kmalloc(sizeof(FILE_ALL_INFO), GFP_KERNEL);
 if (buf == ((void*)0)) {
  rc = -ENOMEM;
  goto out;
 }

 if (backup_cred(cifs_sb))
  create_options |= CREATE_OPEN_BACKUP_INTENT;

 oparms.tcon = tcon;
 oparms.cifs_sb = cifs_sb;
 oparms.desired_access = GENERIC_WRITE;
 oparms.create_options = create_options;
 oparms.disposition = FILE_CREATE;
 oparms.path = full_path;
 oparms.fid = &fid;
 oparms.reconnect = 0;

 if (tcon->ses->server->oplocks)
  oplock = REQ_OPLOCK;
 else
  oplock = 0;
 rc = tcon->ses->server->ops->open(xid, &oparms, &oplock, buf);
 if (rc)
  goto out;






 pdev = (struct win_dev *)buf;
 io_parms.pid = current->tgid;
 io_parms.tcon = tcon;
 io_parms.offset = 0;
 io_parms.length = sizeof(struct win_dev);
 iov[1].iov_base = buf;
 iov[1].iov_len = sizeof(struct win_dev);
 if (S_ISCHR(mode)) {
  memcpy(pdev->type, "IntxCHR", 8);
  pdev->major = cpu_to_le64(MAJOR(dev));
  pdev->minor = cpu_to_le64(MINOR(dev));
  rc = tcon->ses->server->ops->sync_write(xid, &fid, &io_parms,
       &bytes_written, iov, 1);
 } else if (S_ISBLK(mode)) {
  memcpy(pdev->type, "IntxBLK", 8);
  pdev->major = cpu_to_le64(MAJOR(dev));
  pdev->minor = cpu_to_le64(MINOR(dev));
  rc = tcon->ses->server->ops->sync_write(xid, &fid, &io_parms,
       &bytes_written, iov, 1);
 }
 tcon->ses->server->ops->close(xid, tcon, &fid);
 d_drop(dentry);


out:
 kfree(buf);
 return rc;
}
