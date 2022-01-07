
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufshcd_dme_attr_val {int peer; int mib_val; int attr_sel; } ;
struct ufs_hba {int dummy; } ;


 int ATTR_SET_NOR ;
 int ufshcd_dme_set_attr (struct ufs_hba*,int ,int ,int ,int ) ;

int ufshcd_dwc_dme_set_attrs(struct ufs_hba *hba,
    const struct ufshcd_dme_attr_val *v, int n)
{
 int ret = 0;
 int attr_node = 0;

 for (attr_node = 0; attr_node < n; attr_node++) {
  ret = ufshcd_dme_set_attr(hba, v[attr_node].attr_sel,
   ATTR_SET_NOR, v[attr_node].mib_val, v[attr_node].peer);

  if (ret)
   return ret;
 }

 return 0;
}
