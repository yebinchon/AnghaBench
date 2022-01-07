
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int __ufshcd_setup_clocks (struct ufs_hba*,int,int) ;

__attribute__((used)) static int ufshcd_setup_clocks(struct ufs_hba *hba, bool on)
{
 return __ufshcd_setup_clocks(hba, on, 0);
}
