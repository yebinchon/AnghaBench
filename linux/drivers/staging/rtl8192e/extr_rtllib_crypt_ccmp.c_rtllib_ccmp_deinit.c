
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_ccmp_data {scalar_t__ tfm; } ;


 int crypto_free_aead (scalar_t__) ;
 int kfree (void*) ;

__attribute__((used)) static void rtllib_ccmp_deinit(void *priv)
{
 struct rtllib_ccmp_data *_priv = priv;

 if (_priv && _priv->tfm)
  crypto_free_aead(_priv->tfm);
 kfree(priv);
}
