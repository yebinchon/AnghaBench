
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fw_stats_update; int fw_stats; int fw_stats_len; } ;
struct wl1271 {TYPE_3__ stats; TYPE_2__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int debugfsdir; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int jiffies ;
 int kzalloc (int ,int ) ;
 int wl1271_debugfs_add_files (struct wl1271*,struct dentry*) ;
 int wl1271_debugfs_exit (struct wl1271*) ;
 int wlcore_debugfs_init (struct wl1271*,struct dentry*) ;

int wl1271_debugfs_init(struct wl1271 *wl)
{
 int ret;
 struct dentry *rootdir;

 rootdir = debugfs_create_dir(KBUILD_MODNAME,
         wl->hw->wiphy->debugfsdir);

 wl->stats.fw_stats = kzalloc(wl->stats.fw_stats_len, GFP_KERNEL);
 if (!wl->stats.fw_stats) {
  ret = -ENOMEM;
  goto out_remove;
 }

 wl->stats.fw_stats_update = jiffies;

 wl1271_debugfs_add_files(wl, rootdir);

 ret = wlcore_debugfs_init(wl, rootdir);
 if (ret < 0)
  goto out_exit;

 goto out;

out_exit:
 wl1271_debugfs_exit(wl);

out_remove:
 debugfs_remove_recursive(rootdir);

out:
 return ret;
}
