
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_property_dir {int dummy; } ;


 int EAGAIN ;
 int EEXIST ;
 int EINVAL ;
 int TB_PROPERTY_TYPE_DIRECTORY ;
 scalar_t__ WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rebuild_property_block () ;
 int remove_directory (char const*,struct tb_property_dir*) ;
 int strlen (char const*) ;
 int tb_property_add_dir (int ,char const*,struct tb_property_dir*) ;
 scalar_t__ tb_property_find (int ,char const*,int ) ;
 int update_all_xdomains () ;
 int xdomain_lock ;
 int xdomain_property_dir ;

int tb_register_property_dir(const char *key, struct tb_property_dir *dir)
{
 int ret;

 if (WARN_ON(!xdomain_property_dir))
  return -EAGAIN;

 if (!key || strlen(key) > 8)
  return -EINVAL;

 mutex_lock(&xdomain_lock);
 if (tb_property_find(xdomain_property_dir, key,
        TB_PROPERTY_TYPE_DIRECTORY)) {
  ret = -EEXIST;
  goto err_unlock;
 }

 ret = tb_property_add_dir(xdomain_property_dir, key, dir);
 if (ret)
  goto err_unlock;

 ret = rebuild_property_block();
 if (ret) {
  remove_directory(key, dir);
  goto err_unlock;
 }

 mutex_unlock(&xdomain_lock);
 update_all_xdomains();
 return 0;

err_unlock:
 mutex_unlock(&xdomain_lock);
 return ret;
}
