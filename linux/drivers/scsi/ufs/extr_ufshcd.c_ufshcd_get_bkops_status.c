
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int QUERY_ATTR_IDN_BKOPS_STATUS ;
 int UPIU_QUERY_OPCODE_READ_ATTR ;
 int ufshcd_query_attr_retry (struct ufs_hba*,int ,int ,int ,int ,int *) ;

__attribute__((used)) static inline int ufshcd_get_bkops_status(struct ufs_hba *hba, u32 *status)
{
 return ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_READ_ATTR,
   QUERY_ATTR_IDN_BKOPS_STATUS, 0, 0, status);
}
