
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_args {int flags; void* astparam; } ;


 int DLM_LKF_CANCEL ;
 int DLM_LKF_FORCEUNLOCK ;
 int DLM_LKF_IVVALBLK ;
 int DLM_LKF_VALBLK ;
 int EINVAL ;

__attribute__((used)) static int set_unlock_args(uint32_t flags, void *astarg, struct dlm_args *args)
{
 if (flags & ~(DLM_LKF_CANCEL | DLM_LKF_VALBLK | DLM_LKF_IVVALBLK |
         DLM_LKF_FORCEUNLOCK))
  return -EINVAL;

 if (flags & DLM_LKF_CANCEL && flags & DLM_LKF_FORCEUNLOCK)
  return -EINVAL;

 args->flags = flags;
 args->astparam = astarg;
 return 0;
}
