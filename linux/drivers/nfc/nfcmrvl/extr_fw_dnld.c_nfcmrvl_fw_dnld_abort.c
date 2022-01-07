
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_private {int dummy; } ;


 int EHOSTDOWN ;
 int fw_dnld_over (struct nfcmrvl_private*,int ) ;

void nfcmrvl_fw_dnld_abort(struct nfcmrvl_private *priv)
{
 fw_dnld_over(priv, -EHOSTDOWN);
}
