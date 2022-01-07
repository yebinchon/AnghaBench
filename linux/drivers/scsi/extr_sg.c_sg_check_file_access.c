
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {scalar_t__ f_cred; } ;
struct TYPE_3__ {int comm; } ;


 int EACCES ;
 int EPERM ;
 TYPE_1__* current ;
 scalar_t__ current_real_cred () ;
 int pr_err_once (char*,char const*,int ,int ) ;
 int task_tgid_vnr (TYPE_1__*) ;
 scalar_t__ uaccess_kernel () ;

__attribute__((used)) static int sg_check_file_access(struct file *filp, const char *caller)
{
 if (filp->f_cred != current_real_cred()) {
  pr_err_once("%s: process %d (%s) changed security contexts after opening file descriptor, this is not allowed.\n",
   caller, task_tgid_vnr(current), current->comm);
  return -EPERM;
 }
 if (uaccess_kernel()) {
  pr_err_once("%s: process %d (%s) called from kernel context, this is not allowed.\n",
   caller, task_tgid_vnr(current), current->comm);
  return -EACCES;
 }
 return 0;
}
