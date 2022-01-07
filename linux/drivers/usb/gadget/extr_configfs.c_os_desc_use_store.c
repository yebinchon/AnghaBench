
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gadget_info {int use_os_desc; int lock; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gadget_info* os_desc_item_to_gadget_info (struct config_item*) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t os_desc_use_store(struct config_item *item, const char *page,
     size_t len)
{
 struct gadget_info *gi = os_desc_item_to_gadget_info(item);
 int ret;
 bool use;

 mutex_lock(&gi->lock);
 ret = strtobool(page, &use);
 if (!ret) {
  gi->use_os_desc = use;
  ret = len;
 }
 mutex_unlock(&gi->lock);

 return ret;
}
