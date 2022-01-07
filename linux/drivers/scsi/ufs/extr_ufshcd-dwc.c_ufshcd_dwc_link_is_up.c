
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int UFSHCD_LINK_IS_UP ;
 int UIC_ARG_MIB (int ) ;
 int VS_POWERSTATE ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_set_link_active (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_dwc_link_is_up(struct ufs_hba *hba)
{
 int dme_result = 0;

 ufshcd_dme_get(hba, UIC_ARG_MIB(VS_POWERSTATE), &dme_result);

 if (dme_result == UFSHCD_LINK_IS_UP) {
  ufshcd_set_link_active(hba);
  return 0;
 }

 return 1;
}
