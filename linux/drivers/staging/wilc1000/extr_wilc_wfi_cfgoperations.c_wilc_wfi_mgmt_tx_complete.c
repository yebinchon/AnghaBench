
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_p2p_mgmt_data {struct wilc_p2p_mgmt_data* buff; } ;


 int kfree (struct wilc_p2p_mgmt_data*) ;

__attribute__((used)) static void wilc_wfi_mgmt_tx_complete(void *priv, int status)
{
 struct wilc_p2p_mgmt_data *pv_data = priv;

 kfree(pv_data->buff);
 kfree(pv_data);
}
