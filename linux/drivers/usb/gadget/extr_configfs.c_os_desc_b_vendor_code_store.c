
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gadget_info {int lock; int b_vendor_code; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int kstrtou8 (char const*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gadget_info* os_desc_item_to_gadget_info (struct config_item*) ;

__attribute__((used)) static ssize_t os_desc_b_vendor_code_store(struct config_item *item,
        const char *page, size_t len)
{
 struct gadget_info *gi = os_desc_item_to_gadget_info(item);
 int ret;
 u8 b_vendor_code;

 mutex_lock(&gi->lock);
 ret = kstrtou8(page, 0, &b_vendor_code);
 if (!ret) {
  gi->b_vendor_code = b_vendor_code;
  ret = len;
 }
 mutex_unlock(&gi->lock);

 return ret;
}
