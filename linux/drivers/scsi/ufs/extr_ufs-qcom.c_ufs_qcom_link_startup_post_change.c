
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int ufs_qcom_get_connected_tx_lanes (struct ufs_hba*,int *) ;

__attribute__((used)) static int ufs_qcom_link_startup_post_change(struct ufs_hba *hba)
{
 u32 tx_lanes;

 return ufs_qcom_get_connected_tx_lanes(hba, &tx_lanes);
}
