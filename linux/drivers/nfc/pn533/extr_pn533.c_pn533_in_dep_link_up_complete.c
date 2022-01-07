
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct pn533_cmd_jump_dep_response {int status; int gt; int nfcid3t; } ;
struct pn533 {int tgt_available_prots; int tgt_active_prot; TYPE_2__* nfc_dev; int dev; } ;
struct nfc_target {int nfcid1_len; int nfcid1; int supported_protocols; } ;
struct TYPE_6__ {TYPE_1__* targets; } ;
struct TYPE_5__ {int idx; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_PROTO_NFC_DEP ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int NFC_RF_INITIATOR ;
 int PN533_CMD_RET_MASK ;
 int PN533_CMD_RET_SUCCESS ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_dbg (int ,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int kfree (void*) ;
 int memcpy (int ,int ,int) ;
 int nfc_dep_link_is_up (TYPE_2__*,int ,int,int ) ;
 int nfc_err (int ,char*,...) ;
 int nfc_set_remote_general_bytes (TYPE_2__*,int ,scalar_t__) ;
 int nfc_targets_found (TYPE_2__*,struct nfc_target*,int) ;

__attribute__((used)) static int pn533_in_dep_link_up_complete(struct pn533 *dev, void *arg,
      struct sk_buff *resp)
{
 struct pn533_cmd_jump_dep_response *rsp;
 u8 target_gt_len;
 int rc;
 u8 active = *(u8 *)arg;

 kfree(arg);

 if (IS_ERR(resp))
  return PTR_ERR(resp);

 if (dev->tgt_available_prots &&
     !(dev->tgt_available_prots & (1 << NFC_PROTO_NFC_DEP))) {
  nfc_err(dev->dev,
   "The target does not support DEP\n");
  rc = -EINVAL;
  goto error;
 }

 rsp = (struct pn533_cmd_jump_dep_response *)resp->data;

 rc = rsp->status & PN533_CMD_RET_MASK;
 if (rc != PN533_CMD_RET_SUCCESS) {
  nfc_err(dev->dev,
   "Bringing DEP link up failed (error 0x%x)\n", rc);
  goto error;
 }

 if (!dev->tgt_available_prots) {
  struct nfc_target nfc_target;

  dev_dbg(dev->dev, "Creating new target\n");

  nfc_target.supported_protocols = NFC_PROTO_NFC_DEP_MASK;
  nfc_target.nfcid1_len = 10;
  memcpy(nfc_target.nfcid1, rsp->nfcid3t, nfc_target.nfcid1_len);
  rc = nfc_targets_found(dev->nfc_dev, &nfc_target, 1);
  if (rc)
   goto error;

  dev->tgt_available_prots = 0;
 }

 dev->tgt_active_prot = NFC_PROTO_NFC_DEP;


 target_gt_len = resp->len - 17;
 rc = nfc_set_remote_general_bytes(dev->nfc_dev,
       rsp->gt, target_gt_len);
 if (rc == 0)
  rc = nfc_dep_link_is_up(dev->nfc_dev,
     dev->nfc_dev->targets[0].idx,
     !active, NFC_RF_INITIATOR);

error:
 dev_kfree_skb(resp);
 return rc;
}
