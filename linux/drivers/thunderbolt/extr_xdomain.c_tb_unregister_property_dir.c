
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_property_dir {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rebuild_property_block () ;
 scalar_t__ remove_directory (char const*,struct tb_property_dir*) ;
 int update_all_xdomains () ;
 int xdomain_lock ;

void tb_unregister_property_dir(const char *key, struct tb_property_dir *dir)
{
 int ret = 0;

 mutex_lock(&xdomain_lock);
 if (remove_directory(key, dir))
  ret = rebuild_property_block();
 mutex_unlock(&xdomain_lock);

 if (!ret)
  update_all_xdomains();
}
