
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int ufs_version; } ;


 int INTERRUPT_MASK_ALL_VER_10 ;
 int INTERRUPT_MASK_ALL_VER_11 ;
 int INTERRUPT_MASK_ALL_VER_21 ;





__attribute__((used)) static inline u32 ufshcd_get_intr_mask(struct ufs_hba *hba)
{
 u32 intr_mask = 0;

 switch (hba->ufs_version) {
 case 131:
  intr_mask = INTERRUPT_MASK_ALL_VER_10;
  break;
 case 130:
 case 129:
  intr_mask = INTERRUPT_MASK_ALL_VER_11;
  break;
 case 128:
 default:
  intr_mask = INTERRUPT_MASK_ALL_VER_21;
  break;
 }

 return intr_mask;
}
