
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int capabilities; } ;


 int MASK_AUTO_HIBERN8_SUPPORT ;

__attribute__((used)) static inline bool ufshcd_is_auto_hibern8_supported(struct ufs_hba *hba)
{
 return (hba->capabilities & MASK_AUTO_HIBERN8_SUPPORT);
}
