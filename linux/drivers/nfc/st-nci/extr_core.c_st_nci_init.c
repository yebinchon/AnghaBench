
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_mode_set_cmd {int mode; int cmd_type; } ;
struct nci_dev {int dummy; } ;
typedef int __u8 ;


 int ST_NCI_CORE_PROP ;
 int ST_NCI_SET_NFC_MODE ;
 int nci_prop_cmd (struct nci_dev*,int ,int,int *) ;

__attribute__((used)) static int st_nci_init(struct nci_dev *ndev)
{
 struct nci_mode_set_cmd cmd;

 cmd.cmd_type = ST_NCI_SET_NFC_MODE;
 cmd.mode = 1;

 return nci_prop_cmd(ndev, ST_NCI_CORE_PROP,
   sizeof(struct nci_mode_set_cmd), (__u8 *)&cmd);
}
