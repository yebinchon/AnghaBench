
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_dirent {int s_type; int s_frag; int s_iattr; } ;


 int CONFIGFS_ROOT ;
 int configfs_dir_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct configfs_dirent*) ;
 int put_fragment (int ) ;

__attribute__((used)) static inline void release_configfs_dirent(struct configfs_dirent * sd)
{
 if (!(sd->s_type & CONFIGFS_ROOT)) {
  kfree(sd->s_iattr);
  put_fragment(sd->s_frag);
  kmem_cache_free(configfs_dir_cachep, sd);
 }
}
