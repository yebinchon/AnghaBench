
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_flags; } ;
typedef int ssize_t ;


 int LSFL_NODIR ;
 int kstrtoint (char const*,int ,int*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static ssize_t dlm_nodir_store(struct dlm_ls *ls, const char *buf, size_t len)
{
 int val;
 int rc = kstrtoint(buf, 0, &val);

 if (rc)
  return rc;
 if (val == 1)
  set_bit(LSFL_NODIR, &ls->ls_flags);
 return len;
}
