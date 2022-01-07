
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_lksb {int sb_lkid; int sb_lvbptr; } ;
struct dlm_args {int flags; void (* astfn ) (void*) ;void (* bastfn ) (void*,int) ;unsigned long timeout; int mode; struct dlm_lksb* lksb; void* astparam; } ;


 int DLM_LKF_CANCEL ;
 int DLM_LKF_CONVDEADLK ;
 int DLM_LKF_CONVERT ;
 int DLM_LKF_EXPEDITE ;
 int DLM_LKF_NOQUEUE ;
 int DLM_LKF_QUECVT ;
 int DLM_LKF_VALBLK ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_NL ;
 int DLM_RESNAME_MAXLEN ;
 int EINVAL ;

__attribute__((used)) static int set_lock_args(int mode, struct dlm_lksb *lksb, uint32_t flags,
    int namelen, unsigned long timeout_cs,
    void (*ast) (void *astparam),
    void *astparam,
    void (*bast) (void *astparam, int mode),
    struct dlm_args *args)
{
 int rv = -EINVAL;



 if (mode < 0 || mode > DLM_LOCK_EX)
  goto out;

 if (!(flags & DLM_LKF_CONVERT) && (namelen > DLM_RESNAME_MAXLEN))
  goto out;

 if (flags & DLM_LKF_CANCEL)
  goto out;

 if (flags & DLM_LKF_QUECVT && !(flags & DLM_LKF_CONVERT))
  goto out;

 if (flags & DLM_LKF_CONVDEADLK && !(flags & DLM_LKF_CONVERT))
  goto out;

 if (flags & DLM_LKF_CONVDEADLK && flags & DLM_LKF_NOQUEUE)
  goto out;

 if (flags & DLM_LKF_EXPEDITE && flags & DLM_LKF_CONVERT)
  goto out;

 if (flags & DLM_LKF_EXPEDITE && flags & DLM_LKF_QUECVT)
  goto out;

 if (flags & DLM_LKF_EXPEDITE && flags & DLM_LKF_NOQUEUE)
  goto out;

 if (flags & DLM_LKF_EXPEDITE && mode != DLM_LOCK_NL)
  goto out;

 if (!ast || !lksb)
  goto out;

 if (flags & DLM_LKF_VALBLK && !lksb->sb_lvbptr)
  goto out;

 if (flags & DLM_LKF_CONVERT && !lksb->sb_lkid)
  goto out;





 args->flags = flags;
 args->astfn = ast;
 args->astparam = astparam;
 args->bastfn = bast;
 args->timeout = timeout_cs;
 args->mode = mode;
 args->lksb = lksb;
 rv = 0;
 out:
 return rv;
}
