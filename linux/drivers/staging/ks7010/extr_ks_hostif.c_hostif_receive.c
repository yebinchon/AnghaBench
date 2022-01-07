
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {unsigned char* rxp; unsigned int rx_size; } ;


 int devio_rec_ind (struct ks_wlan_private*,unsigned char*,unsigned int) ;
 scalar_t__ get_word (struct ks_wlan_private*) ;
 int hostif_event_check (struct ks_wlan_private*) ;

void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
      unsigned int size)
{
 devio_rec_ind(priv, p, size);

 priv->rxp = p;
 priv->rx_size = size;

 if (get_word(priv) == priv->rx_size)
  hostif_event_check(priv);
}
