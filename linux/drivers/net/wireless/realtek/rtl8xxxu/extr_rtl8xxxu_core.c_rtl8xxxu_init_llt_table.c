
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8xxxu_priv {TYPE_1__* fops; } ;
struct TYPE_2__ {int total_page_num; } ;


 int rtl8xxxu_llt_write (struct rtl8xxxu_priv*,int,int) ;

int rtl8xxxu_init_llt_table(struct rtl8xxxu_priv *priv)
{
 int ret;
 int i;
 u8 last_tx_page;

 last_tx_page = priv->fops->total_page_num;

 for (i = 0; i < last_tx_page; i++) {
  ret = rtl8xxxu_llt_write(priv, i, i + 1);
  if (ret)
   goto exit;
 }

 ret = rtl8xxxu_llt_write(priv, last_tx_page, 0xff);
 if (ret)
  goto exit;


 for (i = last_tx_page + 1; i < 0xff; i++) {
  ret = rtl8xxxu_llt_write(priv, i, (i + 1));
  if (ret)
   goto exit;
 }


 ret = rtl8xxxu_llt_write(priv, 0xff, last_tx_page + 1);
 if (ret)
  goto exit;

exit:
 return ret;
}
