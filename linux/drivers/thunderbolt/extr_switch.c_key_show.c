
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_switch {TYPE_1__* tb; scalar_t__ key; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int lock; } ;


 int TB_SWITCH_KEY_SIZE ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int restart_syscall () ;
 int sprintf (char*,char*,...) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static ssize_t key_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct tb_switch *sw = tb_to_switch(dev);
 ssize_t ret;

 if (!mutex_trylock(&sw->tb->lock))
  return restart_syscall();

 if (sw->key)
  ret = sprintf(buf, "%*phN\n", TB_SWITCH_KEY_SIZE, sw->key);
 else
  ret = sprintf(buf, "\n");

 mutex_unlock(&sw->tb->lock);
 return ret;
}
