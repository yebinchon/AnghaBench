
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tb_switch {TYPE_1__* tb; int * key; scalar_t__ authorized; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int key ;
struct TYPE_2__ {int lock; } ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 int TB_SWITCH_KEY_SIZE ;
 scalar_t__ hex2bin (int *,char const*,int) ;
 int kfree (int *) ;
 int * kmemdup (int *,int,int ) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 size_t restart_syscall () ;
 int strcmp (char const*,char*) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static ssize_t key_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct tb_switch *sw = tb_to_switch(dev);
 u8 key[TB_SWITCH_KEY_SIZE];
 ssize_t ret = count;
 bool clear = 0;

 if (!strcmp(buf, "\n"))
  clear = 1;
 else if (hex2bin(key, buf, sizeof(key)))
  return -EINVAL;

 if (!mutex_trylock(&sw->tb->lock))
  return restart_syscall();

 if (sw->authorized) {
  ret = -EBUSY;
 } else {
  kfree(sw->key);
  if (clear) {
   sw->key = ((void*)0);
  } else {
   sw->key = kmemdup(key, sizeof(key), GFP_KERNEL);
   if (!sw->key)
    ret = -ENOMEM;
  }
 }

 mutex_unlock(&sw->tb->lock);
 return ret;
}
