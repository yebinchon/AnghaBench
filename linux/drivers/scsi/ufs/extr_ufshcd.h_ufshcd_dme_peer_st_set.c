
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int ATTR_SET_ST ;
 int DME_PEER ;
 int ufshcd_dme_set_attr (struct ufs_hba*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ufshcd_dme_peer_st_set(struct ufs_hba *hba, u32 attr_sel,
      u32 mib_val)
{
 return ufshcd_dme_set_attr(hba, attr_sel, ATTR_SET_ST,
       mib_val, DME_PEER);
}
