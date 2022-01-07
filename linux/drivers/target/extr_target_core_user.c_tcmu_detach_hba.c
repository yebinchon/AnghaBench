
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {int * hba_ptr; } ;


 int kfree (int *) ;

__attribute__((used)) static void tcmu_detach_hba(struct se_hba *hba)
{
 kfree(hba->hba_ptr);
 hba->hba_ptr = ((void*)0);
}
