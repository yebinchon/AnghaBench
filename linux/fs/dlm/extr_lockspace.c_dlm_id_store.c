
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_global_id; } ;
typedef int ssize_t ;


 int kstrtouint (char const*,int ,int *) ;

__attribute__((used)) static ssize_t dlm_id_store(struct dlm_ls *ls, const char *buf, size_t len)
{
 int rc = kstrtouint(buf, 0, &ls->ls_global_id);

 if (rc)
  return rc;
 return len;
}
