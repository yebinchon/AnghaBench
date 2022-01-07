
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rx_q; int rx_wq; int rx_work; } ;
struct nfcmrvl_private {TYPE_1__ fw_dnld; TYPE_3__* ndev; } ;
typedef int name ;
struct TYPE_6__ {TYPE_2__* nfc_dev; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 char* dev_name (int *) ;
 int fw_dnld_rx_work ;
 int skb_queue_head_init (int *) ;
 int snprintf (char*,int,char*,char*) ;

int nfcmrvl_fw_dnld_init(struct nfcmrvl_private *priv)
{
 char name[32];

 INIT_WORK(&priv->fw_dnld.rx_work, fw_dnld_rx_work);
 snprintf(name, sizeof(name), "%s_nfcmrvl_fw_dnld_rx_wq",
   dev_name(&priv->ndev->nfc_dev->dev));
 priv->fw_dnld.rx_wq = create_singlethread_workqueue(name);
 if (!priv->fw_dnld.rx_wq)
  return -ENOMEM;
 skb_queue_head_init(&priv->fw_dnld.rx_q);
 return 0;
}
