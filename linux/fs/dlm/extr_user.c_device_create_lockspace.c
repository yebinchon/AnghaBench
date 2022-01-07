
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlm_lspace_params {int name; int flags; } ;
struct TYPE_3__ {int minor; } ;
struct dlm_ls {TYPE_1__ ls_device; } ;
typedef int dlm_lockspace_t ;
struct TYPE_4__ {int ci_cluster_name; } ;


 int CAP_SYS_ADMIN ;
 int DLM_USER_LVB_LEN ;
 int ENOENT ;
 int EPERM ;
 int capable (int ) ;
 TYPE_2__ dlm_config ;
 int dlm_device_register (struct dlm_ls*,int ) ;
 struct dlm_ls* dlm_find_lockspace_local (int *) ;
 int dlm_new_lockspace (int ,int ,int ,int ,int *,int *,int *,int **) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int dlm_release_lockspace (int *,int ) ;

__attribute__((used)) static int device_create_lockspace(struct dlm_lspace_params *params)
{
 dlm_lockspace_t *lockspace;
 struct dlm_ls *ls;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 error = dlm_new_lockspace(params->name, dlm_config.ci_cluster_name, params->flags,
      DLM_USER_LVB_LEN, ((void*)0), ((void*)0), ((void*)0),
      &lockspace);
 if (error)
  return error;

 ls = dlm_find_lockspace_local(lockspace);
 if (!ls)
  return -ENOENT;

 error = dlm_device_register(ls, params->name);
 dlm_put_lockspace(ls);

 if (error)
  dlm_release_lockspace(lockspace, 0);
 else
  error = ls->ls_device.minor;

 return error;
}
