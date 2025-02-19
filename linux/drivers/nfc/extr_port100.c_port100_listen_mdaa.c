
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct port100_tg_comm_rf_cmd {int mdaa; int* nfca_param; int* nfcf_param; void* recv_timeout; void* send_timeout; scalar_t__ guard_time; } ;
struct port100_cb_arg {int mdaa; void* complete_arg; int complete_cb; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_tg_mdaa_params {int sens_res; int sel_res; int sc; int nfcid2; int nfcid1; } ;
typedef int nfc_digital_cmd_complete_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NFC_DIGITAL_CONFIG_FRAMING ;
 int NFC_DIGITAL_CONFIG_RF_TECH ;
 int NFC_DIGITAL_FRAMING_NFCA_NFC_DEP ;
 int NFC_DIGITAL_RF_TECH_106A ;
 int PORT100_CMD_TG_COMM_RF ;
 void* cpu_to_le16 (int) ;
 int kfree (struct port100_cb_arg*) ;
 struct port100_cb_arg* kzalloc (int,int ) ;
 int memcpy (int*,int ,int) ;
 int memset (struct port100_tg_comm_rf_cmd*,int ,int) ;
 struct port100* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 struct sk_buff* port100_alloc_skb (struct port100*,int ) ;
 int port100_send_cmd_async (struct port100*,int ,struct sk_buff*,int ,struct port100_cb_arg*) ;
 int port100_tg_comm_rf_complete ;
 int port100_tg_configure_hw (struct nfc_digital_dev*,int ,int ) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int port100_listen_mdaa(struct nfc_digital_dev *ddev,
          struct digital_tg_mdaa_params *params,
          u16 timeout,
          nfc_digital_cmd_complete_t cb, void *arg)
{
 struct port100 *dev = nfc_digital_get_drvdata(ddev);
 struct port100_tg_comm_rf_cmd *hdr;
 struct port100_cb_arg *cb_arg;
 struct sk_buff *skb;
 int rc;

 rc = port100_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
         NFC_DIGITAL_RF_TECH_106A);
 if (rc)
  return rc;

 rc = port100_tg_configure_hw(ddev, NFC_DIGITAL_CONFIG_FRAMING,
         NFC_DIGITAL_FRAMING_NFCA_NFC_DEP);
 if (rc)
  return rc;

 cb_arg = kzalloc(sizeof(struct port100_cb_arg), GFP_KERNEL);
 if (!cb_arg)
  return -ENOMEM;

 cb_arg->complete_cb = cb;
 cb_arg->complete_arg = arg;
 cb_arg->mdaa = 1;

 skb = port100_alloc_skb(dev, 0);
 if (!skb) {
  kfree(cb_arg);
  return -ENOMEM;
 }

 skb_push(skb, sizeof(struct port100_tg_comm_rf_cmd));
 hdr = (struct port100_tg_comm_rf_cmd *)skb->data;

 memset(hdr, 0, sizeof(struct port100_tg_comm_rf_cmd));

 hdr->guard_time = 0;
 hdr->send_timeout = cpu_to_le16(0xFFFF);
 hdr->mdaa = 1;
 hdr->nfca_param[0] = (params->sens_res >> 8) & 0xFF;
 hdr->nfca_param[1] = params->sens_res & 0xFF;
 memcpy(hdr->nfca_param + 2, params->nfcid1, 3);
 hdr->nfca_param[5] = params->sel_res;
 memcpy(hdr->nfcf_param, params->nfcid2, 8);
 hdr->nfcf_param[16] = (params->sc >> 8) & 0xFF;
 hdr->nfcf_param[17] = params->sc & 0xFF;
 hdr->recv_timeout = cpu_to_le16(timeout);

 return port100_send_cmd_async(dev, PORT100_CMD_TG_COMM_RF, skb,
          port100_tg_comm_rf_complete, cb_arg);
}
