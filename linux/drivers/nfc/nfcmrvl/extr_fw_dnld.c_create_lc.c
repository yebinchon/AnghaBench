
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int state; } ;
struct nfcmrvl_private {int ndev; TYPE_1__ fw_dnld; } ;


 int NCI_CORE_LC_PROP_FW_DL ;
 int NCI_OP_CORE_CONN_CREATE_CMD ;
 int STATE_OPEN_LC ;
 int nci_send_cmd (int ,int ,int,int*) ;

__attribute__((used)) static void create_lc(struct nfcmrvl_private *priv)
{
 uint8_t param[2] = { NCI_CORE_LC_PROP_FW_DL, 0x0 };

 priv->fw_dnld.state = STATE_OPEN_LC;
 nci_send_cmd(priv->ndev, NCI_OP_CORE_CONN_CREATE_CMD, 2, param);
}
