
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int wq; } ;
struct icm_notification {int work; struct tb* tb; int pkg; } ;
typedef enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int icm_handle_notification ;
 struct icm_notification* kmalloc (int,int ) ;
 int kmemdup (void const*,size_t,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void icm_handle_event(struct tb *tb, enum tb_cfg_pkg_type type,
        const void *buf, size_t size)
{
 struct icm_notification *n;

 n = kmalloc(sizeof(*n), GFP_KERNEL);
 if (!n)
  return;

 INIT_WORK(&n->work, icm_handle_notification);
 n->pkg = kmemdup(buf, size, GFP_KERNEL);
 n->tb = tb;

 queue_work(tb->wq, &n->work);
}
