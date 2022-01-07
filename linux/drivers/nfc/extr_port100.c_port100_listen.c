
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
typedef int nfc_digital_cmd_complete_t ;


 int ENOMEM ;
 struct port100* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 struct sk_buff* port100_alloc_skb (struct port100*,int ) ;
 int port100_tg_send_cmd (struct nfc_digital_dev*,struct sk_buff*,int ,int ,void*) ;

__attribute__((used)) static int port100_listen(struct nfc_digital_dev *ddev, u16 timeout,
     nfc_digital_cmd_complete_t cb, void *arg)
{
 struct port100 *dev = nfc_digital_get_drvdata(ddev);
 struct sk_buff *skb;

 skb = port100_alloc_skb(dev, 0);
 if (!skb)
  return -ENOMEM;

 return port100_tg_send_cmd(ddev, skb, timeout, cb, arg);
}
