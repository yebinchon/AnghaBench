
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cw1200_debug_priv {int debugfs_phy; } ;
struct cw1200_common {TYPE_1__* hw; struct cw1200_debug_priv* debug; } ;
struct TYPE_4__ {int debugfsdir; } ;
struct TYPE_3__ {TYPE_2__* wiphy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cw1200_counters_fops ;
 int cw1200_status_fops ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct cw1200_common*,int *) ;
 int fops_wsm_dumps ;
 struct cw1200_debug_priv* kzalloc (int,int ) ;

int cw1200_debug_init(struct cw1200_common *priv)
{
 int ret = -ENOMEM;
 struct cw1200_debug_priv *d = kzalloc(sizeof(struct cw1200_debug_priv),
   GFP_KERNEL);
 priv->debug = d;
 if (!d)
  return ret;

 d->debugfs_phy = debugfs_create_dir("cw1200",
         priv->hw->wiphy->debugfsdir);
 debugfs_create_file("status", 0400, d->debugfs_phy, priv,
       &cw1200_status_fops);
 debugfs_create_file("counters", 0400, d->debugfs_phy, priv,
       &cw1200_counters_fops);
 debugfs_create_file("wsm_dumps", 0200, d->debugfs_phy, priv,
       &fops_wsm_dumps);

 return 0;
}
