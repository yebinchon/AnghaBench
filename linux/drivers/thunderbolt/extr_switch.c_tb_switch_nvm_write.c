
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_switch {TYPE_2__* tb; TYPE_1__* nvm; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {unsigned int buf_data_size; scalar_t__ buf; } ;


 int ENOMEM ;
 int NVM_MAX_SIZE ;
 int memcpy (scalar_t__,void*,size_t) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int restart_syscall () ;
 scalar_t__ vmalloc (int ) ;

__attribute__((used)) static int tb_switch_nvm_write(void *priv, unsigned int offset, void *val,
          size_t bytes)
{
 struct tb_switch *sw = priv;
 int ret = 0;

 if (!mutex_trylock(&sw->tb->lock))
  return restart_syscall();







 if (!sw->nvm->buf) {
  sw->nvm->buf = vmalloc(NVM_MAX_SIZE);
  if (!sw->nvm->buf) {
   ret = -ENOMEM;
   goto unlock;
  }
 }

 sw->nvm->buf_data_size = offset + bytes;
 memcpy(sw->nvm->buf + offset, val, bytes);

unlock:
 mutex_unlock(&sw->tb->lock);

 return ret;
}
