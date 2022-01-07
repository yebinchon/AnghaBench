
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nxp_nci_info {int mode; int info_lock; } ;
struct nxp_nci_i2c_phy {int hard_fault; int ndev; struct i2c_client* i2c_dev; } ;
struct i2c_client {int irq; int dev; } ;
typedef int irqreturn_t ;


 int EREMOTEIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;



 int WARN_ON_ONCE (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nxp_nci_info* nci_get_drvdata (int ) ;
 int nci_recv_frame (int ,struct sk_buff*) ;
 int nfc_err (int *,char*,int) ;
 int nxp_nci_fw_recv_frame (int ,struct sk_buff*) ;
 int nxp_nci_i2c_fw_read (struct nxp_nci_i2c_phy*,struct sk_buff**) ;
 int nxp_nci_i2c_nci_read (struct nxp_nci_i2c_phy*,struct sk_buff**) ;

__attribute__((used)) static irqreturn_t nxp_nci_i2c_irq_thread_fn(int irq, void *phy_id)
{
 struct nxp_nci_i2c_phy *phy = phy_id;
 struct i2c_client *client;
 struct nxp_nci_info *info;

 struct sk_buff *skb = ((void*)0);
 int r = 0;

 if (!phy || !phy->ndev)
  goto exit_irq_none;

 client = phy->i2c_dev;

 if (!client || irq != client->irq)
  goto exit_irq_none;

 info = nci_get_drvdata(phy->ndev);

 if (!info)
  goto exit_irq_none;

 mutex_lock(&info->info_lock);

 if (phy->hard_fault != 0)
  goto exit_irq_handled;

 switch (info->mode) {
 case 128:
  r = nxp_nci_i2c_nci_read(phy, &skb);
  break;
 case 129:
  r = nxp_nci_i2c_fw_read(phy, &skb);
  break;
 case 130:
  r = -EREMOTEIO;
  break;
 }

 if (r == -EREMOTEIO) {
  phy->hard_fault = r;
  skb = ((void*)0);
 } else if (r < 0) {
  nfc_err(&client->dev, "Read failed with error %d\n", r);
  goto exit_irq_handled;
 }

 switch (info->mode) {
 case 128:
  nci_recv_frame(phy->ndev, skb);
  break;
 case 129:
  nxp_nci_fw_recv_frame(phy->ndev, skb);
  break;
 case 130:
  break;
 }

exit_irq_handled:
 mutex_unlock(&info->info_lock);
 return IRQ_HANDLED;
exit_irq_none:
 WARN_ON_ONCE(1);
 return IRQ_NONE;
}
