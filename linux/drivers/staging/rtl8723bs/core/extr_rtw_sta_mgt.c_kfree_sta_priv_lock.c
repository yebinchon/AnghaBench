
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_priv {int dummy; } ;


 int kfree_all_stainfo (struct sta_priv*) ;

void kfree_sta_priv_lock(struct sta_priv *pstapriv)
{
  kfree_all_stainfo(pstapriv);
}
