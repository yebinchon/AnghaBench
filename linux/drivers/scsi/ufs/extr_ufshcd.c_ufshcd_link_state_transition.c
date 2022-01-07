
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int uic_link_state; int auto_bkops_enabled; } ;
typedef enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;


 int UIC_LINK_HIBERN8_STATE ;
 int UIC_LINK_OFF_STATE ;
 int ufshcd_hba_stop (struct ufs_hba*,int) ;
 int ufshcd_set_link_hibern8 (struct ufs_hba*) ;
 int ufshcd_set_link_off (struct ufs_hba*) ;
 int ufshcd_uic_hibern8_enter (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_link_state_transition(struct ufs_hba *hba,
     enum uic_link_state req_link_state,
     int check_for_bkops)
{
 int ret = 0;

 if (req_link_state == hba->uic_link_state)
  return 0;

 if (req_link_state == UIC_LINK_HIBERN8_STATE) {
  ret = ufshcd_uic_hibern8_enter(hba);
  if (!ret)
   ufshcd_set_link_hibern8(hba);
  else
   goto out;
 }




 else if ((req_link_state == UIC_LINK_OFF_STATE) &&
     (!check_for_bkops || (check_for_bkops &&
      !hba->auto_bkops_enabled))) {







  ret = ufshcd_uic_hibern8_enter(hba);
  if (ret)
   goto out;




  ufshcd_hba_stop(hba, 1);




  ufshcd_set_link_off(hba);
 }

out:
 return ret;
}
