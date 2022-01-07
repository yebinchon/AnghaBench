
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {int dummy; } ;
struct dlm_lksb {int sb_lkid; } ;
struct dlm_lkb {int dummy; } ;
struct dlm_args {int dummy; } ;
typedef int dlm_lockspace_t ;


 int DLM_LKF_CONVERT ;
 int EAGAIN ;
 int EDEADLK ;
 int EINPROGRESS ;
 int EINVAL ;
 int __put_lkb (struct dlm_ls*,struct dlm_lkb*) ;
 int convert_lock (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ;
 int create_lkb (struct dlm_ls*,struct dlm_lkb**) ;
 struct dlm_ls* dlm_find_lockspace_local (int *) ;
 int dlm_lock_recovery (struct dlm_ls*) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int dlm_unlock_recovery (struct dlm_ls*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;
 int request_lock (struct dlm_ls*,struct dlm_lkb*,void*,unsigned int,struct dlm_args*) ;
 int set_lock_args (int,struct dlm_lksb*,int,unsigned int,int ,void (*) (void*),void*,void (*) (void*,int),struct dlm_args*) ;

int dlm_lock(dlm_lockspace_t *lockspace,
      int mode,
      struct dlm_lksb *lksb,
      uint32_t flags,
      void *name,
      unsigned int namelen,
      uint32_t parent_lkid,
      void (*ast) (void *astarg),
      void *astarg,
      void (*bast) (void *astarg, int mode))
{
 struct dlm_ls *ls;
 struct dlm_lkb *lkb;
 struct dlm_args args;
 int error, convert = flags & DLM_LKF_CONVERT;

 ls = dlm_find_lockspace_local(lockspace);
 if (!ls)
  return -EINVAL;

 dlm_lock_recovery(ls);

 if (convert)
  error = find_lkb(ls, lksb->sb_lkid, &lkb);
 else
  error = create_lkb(ls, &lkb);

 if (error)
  goto out;

 error = set_lock_args(mode, lksb, flags, namelen, 0, ast,
         astarg, bast, &args);
 if (error)
  goto out_put;

 if (convert)
  error = convert_lock(ls, lkb, &args);
 else
  error = request_lock(ls, lkb, name, namelen, &args);

 if (error == -EINPROGRESS)
  error = 0;
 out_put:
 if (convert || error)
  __put_lkb(ls, lkb);
 if (error == -EAGAIN || error == -EDEADLK)
  error = 0;
 out:
 dlm_unlock_recovery(ls);
 dlm_put_lockspace(ls);
 return error;
}
