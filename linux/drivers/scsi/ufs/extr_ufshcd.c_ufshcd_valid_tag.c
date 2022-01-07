
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int nutrs; } ;



__attribute__((used)) static inline bool ufshcd_valid_tag(struct ufs_hba *hba, int tag)
{
 return tag >= 0 && tag < hba->nutrs;
}
