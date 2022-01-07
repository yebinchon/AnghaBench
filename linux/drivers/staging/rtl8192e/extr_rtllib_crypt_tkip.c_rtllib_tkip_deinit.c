
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_tkip_data {int rx_tfm_arc4; int rx_tfm_michael; int tx_tfm_arc4; int tx_tfm_michael; } ;


 int crypto_free_shash (int ) ;
 int crypto_free_sync_skcipher (int ) ;
 int kfree (void*) ;

__attribute__((used)) static void rtllib_tkip_deinit(void *priv)
{
 struct rtllib_tkip_data *_priv = priv;

 if (_priv) {
  crypto_free_shash(_priv->tx_tfm_michael);
  crypto_free_sync_skcipher(_priv->tx_tfm_arc4);
  crypto_free_shash(_priv->rx_tfm_michael);
  crypto_free_sync_skcipher(_priv->rx_tfm_arc4);
 }
 kfree(priv);
}
