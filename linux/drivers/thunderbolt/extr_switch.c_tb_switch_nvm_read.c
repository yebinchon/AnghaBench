
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_switch {int dev; TYPE_1__* tb; int dma_port; } ;
struct TYPE_2__ {int lock; } ;


 int dma_port_flash_read (int ,unsigned int,void*,size_t) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int restart_syscall () ;

__attribute__((used)) static int tb_switch_nvm_read(void *priv, unsigned int offset, void *val,
         size_t bytes)
{
 struct tb_switch *sw = priv;
 int ret;

 pm_runtime_get_sync(&sw->dev);

 if (!mutex_trylock(&sw->tb->lock)) {
  ret = restart_syscall();
  goto out;
 }

 ret = dma_port_flash_read(sw->dma_port, offset, val, bytes);
 mutex_unlock(&sw->tb->lock);

out:
 pm_runtime_mark_last_busy(&sw->dev);
 pm_runtime_put_autosuspend(&sw->dev);

 return ret;
}
