
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
typedef int async_cookie_t ;


 int ufshcd_probe_hba (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_async_scan(void *data, async_cookie_t cookie)
{
 struct ufs_hba *hba = (struct ufs_hba *)data;

 ufshcd_probe_hba(hba);
}
