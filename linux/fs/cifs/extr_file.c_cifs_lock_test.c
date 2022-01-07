
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file_lock {int fl_type; int fl_pid; scalar_t__ fl_end; scalar_t__ fl_start; int fl_flags; } ;
struct cifsLockInfo {int type; int pid; scalar_t__ length; scalar_t__ offset; } ;
struct cifsInodeInfo {int lock_sem; int can_cache_brlcks; } ;
struct cifsFileInfo {int tlink; int dentry; } ;
struct TCP_Server_Info {TYPE_2__* vals; } ;
typedef int __u8 ;
typedef int __u64 ;
struct TYPE_6__ {TYPE_1__* ses; } ;
struct TYPE_5__ {int shared_lock_type; } ;
struct TYPE_4__ {struct TCP_Server_Info* server; } ;


 struct cifsInodeInfo* CIFS_I (int ) ;
 int CIFS_LOCK_OP ;
 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;
 int cifs_find_lock_conflict (struct cifsFileInfo*,int ,int ,int ,int ,struct cifsLockInfo**,int ) ;
 int d_inode (int ) ;
 int down_read (int *) ;
 TYPE_3__* tlink_tcon (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int
cifs_lock_test(struct cifsFileInfo *cfile, __u64 offset, __u64 length,
        __u8 type, struct file_lock *flock)
{
 int rc = 0;
 struct cifsLockInfo *conf_lock;
 struct cifsInodeInfo *cinode = CIFS_I(d_inode(cfile->dentry));
 struct TCP_Server_Info *server = tlink_tcon(cfile->tlink)->ses->server;
 bool exist;

 down_read(&cinode->lock_sem);

 exist = cifs_find_lock_conflict(cfile, offset, length, type,
     flock->fl_flags, &conf_lock,
     CIFS_LOCK_OP);
 if (exist) {
  flock->fl_start = conf_lock->offset;
  flock->fl_end = conf_lock->offset + conf_lock->length - 1;
  flock->fl_pid = conf_lock->pid;
  if (conf_lock->type & server->vals->shared_lock_type)
   flock->fl_type = F_RDLCK;
  else
   flock->fl_type = F_WRLCK;
 } else if (!cinode->can_cache_brlcks)
  rc = 1;
 else
  flock->fl_type = F_UNLCK;

 up_read(&cinode->lock_sem);
 return rc;
}
