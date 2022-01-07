
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_lock {int fl_end; int fl_start; int fl_type; int fl_flags; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_3__ {int Capability; } ;
struct cifs_tcon {TYPE_1__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsFileInfo {int tlink; } ;
typedef int __u32 ;
struct TYPE_4__ {int server; } ;


 struct cifs_sb_info* CIFS_FILE_SB (struct file*) ;
 int CIFS_MOUNT_NOPOSIXBRL ;
 int CIFS_UNIX_FCNTL_CAP ;
 int EACCES ;
 int EOPNOTSUPP ;
 int FYI ;
 scalar_t__ IS_GETLK (int) ;
 scalar_t__ cap_unix (TYPE_2__*) ;
 int cifs_dbg (int ,char*,int,int ,int ,int ,int ) ;
 int cifs_getlk (struct file*,struct file_lock*,int ,int,int,int) ;
 int cifs_read_flock (struct file_lock*,int *,int*,int*,int*,int ) ;
 int cifs_setlk (struct file*,struct file_lock*,int ,int,int,int,int,int) ;
 int free_xid (int) ;
 int get_xid () ;
 int le64_to_cpu (int ) ;
 struct cifs_tcon* tlink_tcon (int ) ;

int cifs_lock(struct file *file, int cmd, struct file_lock *flock)
{
 int rc, xid;
 int lock = 0, unlock = 0;
 bool wait_flag = 0;
 bool posix_lck = 0;
 struct cifs_sb_info *cifs_sb;
 struct cifs_tcon *tcon;
 struct cifsFileInfo *cfile;
 __u32 type;

 rc = -EACCES;
 xid = get_xid();

 cifs_dbg(FYI, "Lock parm: 0x%x flockflags: 0x%x flocktype: 0x%x start: %lld end: %lld\n",
   cmd, flock->fl_flags, flock->fl_type,
   flock->fl_start, flock->fl_end);

 cfile = (struct cifsFileInfo *)file->private_data;
 tcon = tlink_tcon(cfile->tlink);

 cifs_read_flock(flock, &type, &lock, &unlock, &wait_flag,
   tcon->ses->server);
 cifs_sb = CIFS_FILE_SB(file);

 if (cap_unix(tcon->ses) &&
     (CIFS_UNIX_FCNTL_CAP & le64_to_cpu(tcon->fsUnixInfo.Capability)) &&
     ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0))
  posix_lck = 1;




 if (IS_GETLK(cmd)) {
  rc = cifs_getlk(file, flock, type, wait_flag, posix_lck, xid);
  free_xid(xid);
  return rc;
 }

 if (!lock && !unlock) {




  free_xid(xid);
  return -EOPNOTSUPP;
 }

 rc = cifs_setlk(file, flock, type, wait_flag, posix_lck, lock, unlock,
   xid);
 free_xid(xid);
 return rc;
}
