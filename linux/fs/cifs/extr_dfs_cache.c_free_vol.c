
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_cache_vol_info {int vi_vol; struct dfs_cache_vol_info* vi_mntdata; struct dfs_cache_vol_info* vi_fullpath; int vi_list; } ;


 int cifs_cleanup_volume_info_contents (int *) ;
 int kfree (struct dfs_cache_vol_info*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void free_vol(struct dfs_cache_vol_info *vi)
{
 list_del(&vi->vi_list);
 kfree(vi->vi_fullpath);
 kfree(vi->vi_mntdata);
 cifs_cleanup_volume_info_contents(&vi->vi_vol);
 kfree(vi);
}
