
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* vops; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static inline const char *ufshcd_get_var_name(struct ufs_hba *hba)
{
 if (hba->vops)
  return hba->vops->name;
 return "";
}
