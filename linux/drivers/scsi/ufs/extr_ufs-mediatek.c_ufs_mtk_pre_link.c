
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int UIC_ARG_MIB (int ) ;
 int VS_SAVEPOWERCONTROL ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;

__attribute__((used)) static int ufs_mtk_pre_link(struct ufs_hba *hba)
{
 int ret;
 u32 tmp;


 ret = ufshcd_dme_get(hba, UIC_ARG_MIB(VS_SAVEPOWERCONTROL), &tmp);
 if (ret)
  return ret;

 tmp &= ~(1 << 6);

 ret = ufshcd_dme_set(hba, UIC_ARG_MIB(VS_SAVEPOWERCONTROL), tmp);

 return ret;
}
