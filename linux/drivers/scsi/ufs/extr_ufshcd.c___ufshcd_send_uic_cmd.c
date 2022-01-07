
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uic_command {int done; } ;
struct ufs_hba {int dev; } ;


 int EIO ;
 int dev_err (int ,char*) ;
 int init_completion (int *) ;
 int ufshcd_dispatch_uic_cmd (struct ufs_hba*,struct uic_command*) ;
 int ufshcd_ready_for_uic_cmd (struct ufs_hba*) ;

__attribute__((used)) static int
__ufshcd_send_uic_cmd(struct ufs_hba *hba, struct uic_command *uic_cmd,
        bool completion)
{
 if (!ufshcd_ready_for_uic_cmd(hba)) {
  dev_err(hba->dev,
   "Controller not ready to accept UIC commands\n");
  return -EIO;
 }

 if (completion)
  init_completion(&uic_cmd->done);

 ufshcd_dispatch_uic_cmd(hba, uic_cmd);

 return 0;
}
