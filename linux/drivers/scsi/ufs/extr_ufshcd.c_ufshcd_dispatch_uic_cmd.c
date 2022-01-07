
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uic_command {int argument1; int argument2; int argument3; int command; } ;
struct ufs_hba {struct uic_command* active_uic_cmd; } ;


 int COMMAND_OPCODE_MASK ;
 int REG_UIC_COMMAND ;
 int REG_UIC_COMMAND_ARG_1 ;
 int REG_UIC_COMMAND_ARG_2 ;
 int REG_UIC_COMMAND_ARG_3 ;
 int WARN_ON (struct uic_command*) ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static inline void
ufshcd_dispatch_uic_cmd(struct ufs_hba *hba, struct uic_command *uic_cmd)
{
 WARN_ON(hba->active_uic_cmd);

 hba->active_uic_cmd = uic_cmd;


 ufshcd_writel(hba, uic_cmd->argument1, REG_UIC_COMMAND_ARG_1);
 ufshcd_writel(hba, uic_cmd->argument2, REG_UIC_COMMAND_ARG_2);
 ufshcd_writel(hba, uic_cmd->argument3, REG_UIC_COMMAND_ARG_3);


 ufshcd_writel(hba, uic_cmd->command & COMMAND_OPCODE_MASK,
        REG_UIC_COMMAND);
}
