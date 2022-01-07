
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct v9fs_session_info {int session_lock_timeout; } ;
struct p9_flock {scalar_t__ start; scalar_t__ length; scalar_t__ client_id; int flags; int proc_id; int type; } ;
struct p9_fid {TYPE_1__* clnt; } ;
struct file_lock {int fl_flags; char fl_type; scalar_t__ fl_start; scalar_t__ fl_end; int fl_pid; } ;
struct file {struct p9_fid* private_data; } ;
typedef int flock ;
struct TYPE_2__ {scalar_t__ name; } ;


 int BUG () ;
 int BUG_ON (int ) ;
 int EAGAIN ;
 int ENOLCK ;
 int FL_POSIX ;



 scalar_t__ IS_SETLKW (int) ;
 scalar_t__ OFFSET_MAX ;


 int P9_LOCK_FLAGS_BLOCK ;


 int P9_LOCK_TYPE_RDLCK ;
 int P9_LOCK_TYPE_UNLCK ;
 int P9_LOCK_TYPE_WRLCK ;
 int WARN_ONCE (int,char*,int) ;
 int file_inode (struct file*) ;
 int kfree (scalar_t__) ;
 int locks_lock_file_wait (struct file*,struct file_lock*) ;
 int memset (struct p9_flock*,int ,int) ;
 int p9_client_lock_dotl (struct p9_fid*,struct p9_flock*,int*) ;
 scalar_t__ schedule_timeout_interruptible (int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (int ) ;

__attribute__((used)) static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
{
 struct p9_flock flock;
 struct p9_fid *fid;
 uint8_t status = 130;
 int res = 0;
 unsigned char fl_type;
 struct v9fs_session_info *v9ses;

 fid = filp->private_data;
 BUG_ON(fid == ((void*)0));

 if ((fl->fl_flags & FL_POSIX) != FL_POSIX)
  BUG();

 res = locks_lock_file_wait(filp, fl);
 if (res < 0)
  goto out;


 memset(&flock, 0, sizeof(flock));

 switch (fl->fl_type) {
 case 134:
  flock.type = P9_LOCK_TYPE_RDLCK;
  break;
 case 132:
  flock.type = P9_LOCK_TYPE_WRLCK;
  break;
 case 133:
  flock.type = P9_LOCK_TYPE_UNLCK;
  break;
 }
 flock.start = fl->fl_start;
 if (fl->fl_end == OFFSET_MAX)
  flock.length = 0;
 else
  flock.length = fl->fl_end - fl->fl_start + 1;
 flock.proc_id = fl->fl_pid;
 flock.client_id = fid->clnt->name;
 if (IS_SETLKW(cmd))
  flock.flags = P9_LOCK_FLAGS_BLOCK;

 v9ses = v9fs_inode2v9ses(file_inode(filp));





 for (;;) {
  res = p9_client_lock_dotl(fid, &flock, &status);
  if (res < 0)
   goto out_unlock;

  if (status != 131)
   break;
  if (status == 131 && !IS_SETLKW(cmd))
   break;
  if (schedule_timeout_interruptible(v9ses->session_lock_timeout)
    != 0)
   break;




  if (flock.client_id != fid->clnt->name) {
   kfree(flock.client_id);
   flock.client_id = fid->clnt->name;
  }
 }


 switch (status) {
 case 128:
  res = 0;
  break;
 case 131:
  res = -EAGAIN;
  break;
 default:
  WARN_ONCE(1, "unknown lock status code: %d\n", status);

 case 130:
 case 129:
  res = -ENOLCK;
  break;
 }

out_unlock:




 if (res < 0 && fl->fl_type != 133) {
  fl_type = fl->fl_type;
  fl->fl_type = 133;

  locks_lock_file_wait(filp, fl);
  fl->fl_type = fl_type;
 }
 if (flock.client_id != fid->clnt->name)
  kfree(flock.client_id);
out:
 return res;
}
