
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct s3fwrn5_i2c_phy {int mode; int ndev; int i2c_dev; } ;
struct s3fwrn5_fw_header {size_t len; } ;
struct nci_ctrl_hdr {size_t plen; } ;


 int EBADMSG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NCI_CTRL_HDR_SIZE ;
 size_t S3FWRN5_FW_HDR_SIZE ;
 int S3FWRN5_MODE_NCI ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 int i2c_master_recv (int ,char*,size_t) ;
 int kfree_skb (struct sk_buff*) ;
 int s3fwrn5_recv_frame (int ,struct sk_buff*,int ) ;
 char* skb_put (struct sk_buff*,size_t) ;
 int skb_put_data (struct sk_buff*,char*,size_t) ;

__attribute__((used)) static int s3fwrn5_i2c_read(struct s3fwrn5_i2c_phy *phy)
{
 struct sk_buff *skb;
 size_t hdr_size;
 size_t data_len;
 char hdr[4];
 int ret;

 hdr_size = (phy->mode == S3FWRN5_MODE_NCI) ?
  NCI_CTRL_HDR_SIZE : S3FWRN5_FW_HDR_SIZE;
 ret = i2c_master_recv(phy->i2c_dev, hdr, hdr_size);
 if (ret < 0)
  return ret;

 if (ret < hdr_size)
  return -EBADMSG;

 data_len = (phy->mode == S3FWRN5_MODE_NCI) ?
  ((struct nci_ctrl_hdr *)hdr)->plen :
  ((struct s3fwrn5_fw_header *)hdr)->len;

 skb = alloc_skb(hdr_size + data_len, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 skb_put_data(skb, hdr, hdr_size);

 if (data_len == 0)
  goto out;

 ret = i2c_master_recv(phy->i2c_dev, skb_put(skb, data_len), data_len);
 if (ret != data_len) {
  kfree_skb(skb);
  return -EBADMSG;
 }

out:
 return s3fwrn5_recv_frame(phy->ndev, skb, phy->mode);
}
