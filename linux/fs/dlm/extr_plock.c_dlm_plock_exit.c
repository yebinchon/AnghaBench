
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 int plock_dev_misc ;

void dlm_plock_exit(void)
{
 misc_deregister(&plock_dev_misc);
}
