
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int is_unplugged; } ;
struct tb {int lock; } ;


 int __tb_disconnect_xdomain_paths (struct tb*,struct tb_xdomain*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tb_disconnect_xdomain_paths(struct tb *tb, struct tb_xdomain *xd)
{
 if (!xd->is_unplugged) {
  mutex_lock(&tb->lock);
  __tb_disconnect_xdomain_paths(tb, xd);
  mutex_unlock(&tb->lock);
 }
 return 0;
}
