
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct nfcmrvl_private {TYPE_1__ fw_dnld; int dev; } ;
struct TYPE_4__ {int timer; } ;


 int ETIMEDOUT ;
 int STATE_RESET ;
 struct nfcmrvl_private* from_timer (int ,struct timer_list*,int ) ;
 TYPE_2__ fw_dnld ;
 int fw_dnld_over (struct nfcmrvl_private*,int ) ;
 int nfc_err (int ,char*) ;
 struct nfcmrvl_private* priv ;

__attribute__((used)) static void fw_dnld_timeout(struct timer_list *t)
{
 struct nfcmrvl_private *priv = from_timer(priv, t, fw_dnld.timer);

 nfc_err(priv->dev, "FW loading timeout");
 priv->fw_dnld.state = STATE_RESET;
 fw_dnld_over(priv, -ETIMEDOUT);
}
