
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct ks_wlan_private {int net_dev; scalar_t__ wq; } ;
struct ks_sdio_card {struct ks_wlan_private* priv; } ;


 int INT_ENABLE_REG ;
 int INT_PENDING_REG ;
 int destroy_workqueue (scalar_t__) ;
 int flush_workqueue (scalar_t__) ;
 int free_netdev (int ) ;
 int hostif_exit (struct ks_wlan_private*) ;
 int kfree (struct ks_sdio_card*) ;
 int ks_wlan_net_stop (int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 struct ks_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,int *) ;
 int sdio_writeb (struct sdio_func*,int,int ,int*) ;
 int send_stop_request (struct sdio_func*) ;
 int trx_device_exit (struct ks_wlan_private*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void ks7010_sdio_remove(struct sdio_func *func)
{
 int ret;
 struct ks_sdio_card *card;
 struct ks_wlan_private *priv;

 card = sdio_get_drvdata(func);

 if (!card)
  return;

 priv = card->priv;
 if (!priv)
  goto err_free_card;

 ks_wlan_net_stop(priv->net_dev);


 sdio_claim_host(func);
 sdio_writeb(func, 0, INT_ENABLE_REG, &ret);
 sdio_writeb(func, 0xff, INT_PENDING_REG, &ret);
 sdio_release_host(func);

 ret = send_stop_request(func);
 if (ret)
  goto err_free_card;

 if (priv->wq) {
  flush_workqueue(priv->wq);
  destroy_workqueue(priv->wq);
 }

 hostif_exit(priv);

 unregister_netdev(priv->net_dev);

 trx_device_exit(priv);
 free_netdev(priv->net_dev);
 card->priv = ((void*)0);

 sdio_claim_host(func);
 sdio_release_irq(func);
 sdio_disable_func(func);
 sdio_release_host(func);
err_free_card:
 sdio_set_drvdata(func, ((void*)0));
 kfree(card);
}
