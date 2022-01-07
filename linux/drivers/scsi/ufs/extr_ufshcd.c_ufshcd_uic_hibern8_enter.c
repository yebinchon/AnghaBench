
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int ENOLINK ;
 int UIC_HIBERN8_ENTER_RETRIES ;
 int __ufshcd_uic_hibern8_enter (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_uic_hibern8_enter(struct ufs_hba *hba)
{
 int ret = 0, retries;

 for (retries = UIC_HIBERN8_ENTER_RETRIES; retries > 0; retries--) {
  ret = __ufshcd_uic_hibern8_enter(hba);
  if (!ret || ret == -ENOLINK)
   goto out;
 }
out:
 return ret;
}
