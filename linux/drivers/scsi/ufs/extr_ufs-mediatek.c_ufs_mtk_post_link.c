
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int PA_LOCAL_TX_LCC_ENABLE ;
 int UIC_ARG_MIB (int ) ;
 int ufs_mtk_cfg_unipro_cg (struct ufs_hba*,int) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static int ufs_mtk_post_link(struct ufs_hba *hba)
{

 ufshcd_dme_set(hba, UIC_ARG_MIB(PA_LOCAL_TX_LCC_ENABLE), 0);


 ufs_mtk_cfg_unipro_cg(hba, 1);

 return 0;
}
