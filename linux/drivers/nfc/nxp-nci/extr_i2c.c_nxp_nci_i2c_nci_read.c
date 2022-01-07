
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nxp_nci_i2c_phy {struct i2c_client* i2c_dev; } ;
struct nci_ctrl_hdr {int plen; } ;
struct i2c_client {int dev; } ;


 int EBADMSG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NCI_CTRL_HDR_SIZE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_err (int *,char*,int,...) ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,void*,int) ;

__attribute__((used)) static int nxp_nci_i2c_nci_read(struct nxp_nci_i2c_phy *phy,
    struct sk_buff **skb)
{
 struct nci_ctrl_hdr header;
 struct i2c_client *client = phy->i2c_dev;
 int r;

 r = i2c_master_recv(client, (u8 *) &header, NCI_CTRL_HDR_SIZE);
 if (r < 0) {
  goto nci_read_exit;
 } else if (r != NCI_CTRL_HDR_SIZE) {
  nfc_err(&client->dev, "Incorrect header length: %u\n", r);
  r = -EBADMSG;
  goto nci_read_exit;
 }

 *skb = alloc_skb(NCI_CTRL_HDR_SIZE + header.plen, GFP_KERNEL);
 if (*skb == ((void*)0)) {
  r = -ENOMEM;
  goto nci_read_exit;
 }

 skb_put_data(*skb, (void *)&header, NCI_CTRL_HDR_SIZE);

 r = i2c_master_recv(client, skb_put(*skb, header.plen), header.plen);
 if (r != header.plen) {
  nfc_err(&client->dev,
   "Invalid frame payload length: %u (expected %u)\n",
   r, header.plen);
  r = -EBADMSG;
  goto nci_read_exit_free_skb;
 }

 return 0;

nci_read_exit_free_skb:
 kfree_skb(*skb);
nci_read_exit:
 return r;
}
