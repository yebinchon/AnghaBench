
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_wq; } ;
struct nfcmrvl_private {TYPE_1__ fw_dnld; } ;


 int destroy_workqueue (int ) ;

void nfcmrvl_fw_dnld_deinit(struct nfcmrvl_private *priv)
{
 destroy_workqueue(priv->fw_dnld.rx_wq);
}
