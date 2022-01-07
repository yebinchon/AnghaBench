
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcmu_hba {int host_id; } ;
struct se_hba {struct tcmu_hba* hba_ptr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tcmu_hba* kzalloc (int,int ) ;

__attribute__((used)) static int tcmu_attach_hba(struct se_hba *hba, u32 host_id)
{
 struct tcmu_hba *tcmu_hba;

 tcmu_hba = kzalloc(sizeof(struct tcmu_hba), GFP_KERNEL);
 if (!tcmu_hba)
  return -ENOMEM;

 tcmu_hba->host_id = host_id;
 hba->hba_ptr = tcmu_hba;

 return 0;
}
