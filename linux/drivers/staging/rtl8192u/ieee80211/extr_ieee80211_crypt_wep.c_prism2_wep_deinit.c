
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prism2_wep_data {int rx_tfm; int tx_tfm; } ;


 int crypto_free_sync_skcipher (int ) ;
 int kfree (void*) ;

__attribute__((used)) static void prism2_wep_deinit(void *priv)
{
 struct prism2_wep_data *_priv = priv;

 if (_priv) {
  crypto_free_sync_skcipher(_priv->tx_tfm);
  crypto_free_sync_skcipher(_priv->rx_tfm);
 }
 kfree(priv);
}
