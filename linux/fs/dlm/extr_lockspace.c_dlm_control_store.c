
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_local_handle; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct dlm_ls* dlm_find_lockspace_local (int ) ;
 int dlm_ls_start (struct dlm_ls*) ;
 int dlm_ls_stop (struct dlm_ls*) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t dlm_control_store(struct dlm_ls *ls, const char *buf, size_t len)
{
 ssize_t ret = len;
 int n;
 int rc = kstrtoint(buf, 0, &n);

 if (rc)
  return rc;
 ls = dlm_find_lockspace_local(ls->ls_local_handle);
 if (!ls)
  return -EINVAL;

 switch (n) {
 case 0:
  dlm_ls_stop(ls);
  break;
 case 1:
  dlm_ls_start(ls);
  break;
 default:
  ret = -EINVAL;
 }
 dlm_put_lockspace(ls);
 return ret;
}
