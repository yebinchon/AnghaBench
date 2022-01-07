
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dlm_no_directory (struct dlm_ls*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t dlm_nodir_show(struct dlm_ls *ls, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u\n", dlm_no_directory(ls));
}
