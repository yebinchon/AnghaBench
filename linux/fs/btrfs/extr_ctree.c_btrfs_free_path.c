
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {int dummy; } ;


 int btrfs_path_cachep ;
 int btrfs_release_path (struct btrfs_path*) ;
 int kmem_cache_free (int ,struct btrfs_path*) ;

void btrfs_free_path(struct btrfs_path *p)
{
 if (!p)
  return;
 btrfs_release_path(p);
 kmem_cache_free(btrfs_path_cachep, p);
}
