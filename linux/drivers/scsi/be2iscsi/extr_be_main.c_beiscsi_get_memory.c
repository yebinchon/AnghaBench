
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;


 int beiscsi_alloc_mem (struct beiscsi_hba*) ;
 int beiscsi_find_mem_req (struct beiscsi_hba*) ;

__attribute__((used)) static int beiscsi_get_memory(struct beiscsi_hba *phba)
{
 beiscsi_find_mem_req(phba);
 return beiscsi_alloc_mem(phba);
}
