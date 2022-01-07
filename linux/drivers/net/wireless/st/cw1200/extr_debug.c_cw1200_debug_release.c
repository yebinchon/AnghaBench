
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_debug_priv {int debugfs_phy; } ;
struct cw1200_common {struct cw1200_debug_priv* debug; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (struct cw1200_debug_priv*) ;

void cw1200_debug_release(struct cw1200_common *priv)
{
 struct cw1200_debug_priv *d = priv->debug;
 if (d) {
  debugfs_remove_recursive(d->debugfs_phy);
  priv->debug = ((void*)0);
  kfree(d);
 }
}
