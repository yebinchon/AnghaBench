
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_getlock {int type; scalar_t__ start; scalar_t__ length; scalar_t__ client_id; int proc_id; } ;
struct p9_fid {TYPE_1__* clnt; } ;
struct file_lock {scalar_t__ fl_type; scalar_t__ fl_start; scalar_t__ fl_end; int fl_pid; } ;
struct file {struct p9_fid* private_data; } ;
typedef int glock ;
struct TYPE_2__ {scalar_t__ name; } ;


 int BUG_ON (int ) ;
 scalar_t__ F_RDLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 scalar_t__ OFFSET_MAX ;



 int kfree (scalar_t__) ;
 int memset (struct p9_getlock*,int ,int) ;
 int p9_client_getlock_dotl (struct p9_fid*,struct p9_getlock*) ;
 int posix_test_lock (struct file*,struct file_lock*) ;

__attribute__((used)) static int v9fs_file_getlock(struct file *filp, struct file_lock *fl)
{
 struct p9_getlock glock;
 struct p9_fid *fid;
 int res = 0;

 fid = filp->private_data;
 BUG_ON(fid == ((void*)0));

 posix_test_lock(filp, fl);




 if (fl->fl_type != F_UNLCK)
  return res;


 memset(&glock, 0, sizeof(glock));
 glock.type = 129;
 glock.start = fl->fl_start;
 if (fl->fl_end == OFFSET_MAX)
  glock.length = 0;
 else
  glock.length = fl->fl_end - fl->fl_start + 1;
 glock.proc_id = fl->fl_pid;
 glock.client_id = fid->clnt->name;

 res = p9_client_getlock_dotl(fid, &glock);
 if (res < 0)
  goto out;

 switch (glock.type) {
 case 130:
  fl->fl_type = F_RDLCK;
  break;
 case 128:
  fl->fl_type = F_WRLCK;
  break;
 case 129:
  fl->fl_type = F_UNLCK;
  break;
 }
 if (glock.type != 129) {
  fl->fl_start = glock.start;
  if (glock.length == 0)
   fl->fl_end = OFFSET_MAX;
  else
   fl->fl_end = glock.start + glock.length - 1;
  fl->fl_pid = -glock.proc_id;
 }
out:
 if (glock.client_id != fid->clnt->name)
  kfree(glock.client_id);
 return res;
}
