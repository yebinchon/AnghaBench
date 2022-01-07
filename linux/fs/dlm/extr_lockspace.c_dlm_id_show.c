
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_global_id; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t dlm_id_show(struct dlm_ls *ls, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u\n", ls->ls_global_id);
}
