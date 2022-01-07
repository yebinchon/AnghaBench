
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int QUERY_DESC_IDN_POWER ;
 int ufshcd_read_desc (struct ufs_hba*,int ,int ,int *,int ) ;

__attribute__((used)) static inline int ufshcd_read_power_desc(struct ufs_hba *hba,
      u8 *buf,
      u32 size)
{
 return ufshcd_read_desc(hba, QUERY_DESC_IDN_POWER, 0, buf, size);
}
