
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int lock; int root_switch; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ tb_free_unplugged_xdomains (int ) ;
 int tb_scan_switch (int ) ;

__attribute__((used)) static void tb_complete(struct tb *tb)
{





 mutex_lock(&tb->lock);
 if (tb_free_unplugged_xdomains(tb->root_switch))
  tb_scan_switch(tb->root_switch);
 mutex_unlock(&tb->lock);
}
