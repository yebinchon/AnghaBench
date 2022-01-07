
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ufs_hba {TYPE_1__* active_uic_cmd; } ;
struct TYPE_2__ {scalar_t__ command; } ;


 int UFSHCD_UIC_HIBERN8_MASK ;
 scalar_t__ UIC_CMD_DME_HIBER_ENTER ;
 scalar_t__ UIC_CMD_DME_HIBER_EXIT ;
 int ufshcd_is_auto_hibern8_supported (struct ufs_hba*) ;

__attribute__((used)) static bool ufshcd_is_auto_hibern8_error(struct ufs_hba *hba,
      u32 intr_mask)
{
 if (!ufshcd_is_auto_hibern8_supported(hba))
  return 0;

 if (!(intr_mask & UFSHCD_UIC_HIBERN8_MASK))
  return 0;

 if (hba->active_uic_cmd &&
     (hba->active_uic_cmd->command == UIC_CMD_DME_HIBER_ENTER ||
     hba->active_uic_cmd->command == UIC_CMD_DME_HIBER_EXIT))
  return 0;

 return 1;
}
