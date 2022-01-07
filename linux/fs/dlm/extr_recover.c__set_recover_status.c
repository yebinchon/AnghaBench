
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {int ls_recover_status; } ;



__attribute__((used)) static void _set_recover_status(struct dlm_ls *ls, uint32_t status)
{
 ls->ls_recover_status |= status;
}
