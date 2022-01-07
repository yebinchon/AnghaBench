
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dlm_recover_status (struct dlm_ls*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t dlm_recover_status_show(struct dlm_ls *ls, char *buf)
{
 uint32_t status = dlm_recover_status(ls);
 return snprintf(buf, PAGE_SIZE, "%x\n", status);
}
