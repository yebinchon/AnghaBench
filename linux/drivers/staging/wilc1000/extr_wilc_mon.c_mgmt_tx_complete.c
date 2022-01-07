
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_complete_mon_data {struct tx_complete_mon_data* buff; } ;


 int kfree (struct tx_complete_mon_data*) ;

__attribute__((used)) static void mgmt_tx_complete(void *priv, int status)
{
 struct tx_complete_mon_data *pv_data = priv;




 kfree(pv_data->buff);

 kfree(pv_data);
}
