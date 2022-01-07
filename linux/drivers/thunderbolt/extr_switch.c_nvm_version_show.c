
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_switch {TYPE_2__* tb; TYPE_1__* nvm; scalar_t__ safe_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int major; int minor; } ;


 int EAGAIN ;
 int ENODATA ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int restart_syscall () ;
 int sprintf (char*,char*,int,int) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static ssize_t nvm_version_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct tb_switch *sw = tb_to_switch(dev);
 int ret;

 if (!mutex_trylock(&sw->tb->lock))
  return restart_syscall();

 if (sw->safe_mode)
  ret = -ENODATA;
 else if (!sw->nvm)
  ret = -EAGAIN;
 else
  ret = sprintf(buf, "%x.%x\n", sw->nvm->major, sw->nvm->minor);

 mutex_unlock(&sw->tb->lock);

 return ret;
}
