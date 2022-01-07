
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_priv {int pallocated_stainfo_buf; } ;


 int kfree (int ) ;
 int mfree_all_stainfo (struct sta_priv*) ;

void _r8712_free_sta_priv(struct sta_priv *pstapriv)
{
 if (pstapriv) {

  mfree_all_stainfo(pstapriv);
  kfree(pstapriv->pallocated_stainfo_buf);
 }
}
