
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nfcsim {int send_work; int mode; int rf_tech; int link_out; scalar_t__ dropframe; int recv_work; void* arg; int cb; int recv_timeout; int up; } ;
struct nfc_digital_dev {int dummy; } ;
typedef int nfc_digital_cmd_complete_t ;


 int ENODEV ;
 int NFCSIM_DBG (struct nfcsim*,char*,scalar_t__) ;
 int NFCSIM_ERR (struct nfcsim*,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int get_random_bytes (int*,int) ;
 int msecs_to_jiffies (int) ;
 struct nfcsim* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int nfcsim_link_set_skb (int ,struct sk_buff*,int ,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int nfcsim_send(struct nfc_digital_dev *ddev, struct sk_buff *skb,
         u16 timeout, nfc_digital_cmd_complete_t cb, void *arg)
{
 struct nfcsim *dev = nfc_digital_get_drvdata(ddev);
 u8 delay;

 if (!dev->up) {
  NFCSIM_ERR(dev, "Device is down\n");
  return -ENODEV;
 }

 dev->recv_timeout = timeout;
 dev->cb = cb;
 dev->arg = arg;

 schedule_work(&dev->recv_work);

 if (dev->dropframe) {
  NFCSIM_DBG(dev, "dropping frame (out of %d)\n", dev->dropframe);
  dev_kfree_skb(skb);
  dev->dropframe--;

  return 0;
 }

 if (skb) {
  nfcsim_link_set_skb(dev->link_out, skb, dev->rf_tech,
        dev->mode);


  get_random_bytes(&delay, 1);
  delay = 3 + (delay & 0x07);

  schedule_delayed_work(&dev->send_work, msecs_to_jiffies(delay));
 }

 return 0;
}
