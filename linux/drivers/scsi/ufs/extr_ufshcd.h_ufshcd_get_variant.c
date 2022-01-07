
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {void* priv; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline void *ufshcd_get_variant(struct ufs_hba *hba)
{
 BUG_ON(!hba);
 return hba->priv;
}
