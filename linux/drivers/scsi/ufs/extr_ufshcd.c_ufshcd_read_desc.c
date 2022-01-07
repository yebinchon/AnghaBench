
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;
typedef enum desc_idn { ____Placeholder_desc_idn } desc_idn ;


 int ufshcd_read_desc_param (struct ufs_hba*,int,int,int ,void*,int ) ;

__attribute__((used)) static inline int ufshcd_read_desc(struct ufs_hba *hba,
       enum desc_idn desc_id,
       int desc_index,
       void *buf,
       u32 size)
{
 return ufshcd_read_desc_param(hba, desc_id, desc_index, 0, buf, size);
}
