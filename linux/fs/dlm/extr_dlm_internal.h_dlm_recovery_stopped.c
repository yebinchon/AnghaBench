
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_flags; } ;


 int LSFL_RECOVER_STOP ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int dlm_recovery_stopped(struct dlm_ls *ls)
{
 return test_bit(LSFL_RECOVER_STOP, &ls->ls_flags);
}
