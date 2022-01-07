
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_nhi {int pdev; } ;
typedef enum icl_lc_mailbox_cmd { ____Placeholder_icl_lc_mailbox_cmd } icl_lc_mailbox_cmd ;


 int VS_CAP_19 ;
 int VS_CAP_19_CMD_MASK ;
 int VS_CAP_19_CMD_SHIFT ;
 int VS_CAP_19_VALID ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void icl_nhi_lc_mailbox_cmd(struct tb_nhi *nhi, enum icl_lc_mailbox_cmd cmd)
{
 u32 data;

 data = (cmd << VS_CAP_19_CMD_SHIFT) & VS_CAP_19_CMD_MASK;
 pci_write_config_dword(nhi->pdev, VS_CAP_19, data | VS_CAP_19_VALID);
}
