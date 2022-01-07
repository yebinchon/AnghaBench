
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_complete_data {int skb; } ;


 int dev_kfree_skb (int ) ;
 int kfree (struct tx_complete_data*) ;

__attribute__((used)) static void wilc_tx_complete(void *priv, int status)
{
 struct tx_complete_data *pv_data = priv;

 dev_kfree_skb(pv_data->skb);
 kfree(pv_data);
}
