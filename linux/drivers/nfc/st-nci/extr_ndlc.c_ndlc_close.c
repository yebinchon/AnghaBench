
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_mode_set_cmd {scalar_t__ mode; int cmd_type; } ;
struct llt_ndlc {int phy_id; TYPE_1__* ops; scalar_t__ powered; int ndev; } ;
typedef int __u8 ;
struct TYPE_2__ {int (* disable ) (int ) ;int (* enable ) (int ) ;} ;


 int ST_NCI_CORE_PROP ;
 int ST_NCI_SET_NFC_MODE ;
 int nci_prop_cmd (int ,int ,int,int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void ndlc_close(struct llt_ndlc *ndlc)
{
 struct nci_mode_set_cmd cmd;

 cmd.cmd_type = ST_NCI_SET_NFC_MODE;
 cmd.mode = 0;


 ndlc->ops->enable(ndlc->phy_id);

 nci_prop_cmd(ndlc->ndev, ST_NCI_CORE_PROP,
       sizeof(struct nci_mode_set_cmd), (__u8 *)&cmd);

 ndlc->powered = 0;
 ndlc->ops->disable(ndlc->phy_id);
}
