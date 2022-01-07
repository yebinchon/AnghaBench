
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lspace_params {int flags; int minor; } ;
struct dlm_ls {int * ls_local_handle; } ;
typedef int dlm_lockspace_t ;


 int CAP_SYS_ADMIN ;
 int DLM_USER_LSFLG_FORCEFREE ;
 int ENOENT ;
 int EPERM ;
 int capable (int ) ;
 struct dlm_ls* dlm_find_lockspace_device (int ) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int dlm_release_lockspace (int *,int) ;

__attribute__((used)) static int device_remove_lockspace(struct dlm_lspace_params *params)
{
 dlm_lockspace_t *lockspace;
 struct dlm_ls *ls;
 int error, force = 0;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 ls = dlm_find_lockspace_device(params->minor);
 if (!ls)
  return -ENOENT;

 if (params->flags & DLM_USER_LSFLG_FORCEFREE)
  force = 2;

 lockspace = ls->ls_local_handle;
 dlm_put_lockspace(ls);
 error = dlm_release_lockspace(lockspace, force);
 if (error > 0)
  error = 0;
 return error;
}
