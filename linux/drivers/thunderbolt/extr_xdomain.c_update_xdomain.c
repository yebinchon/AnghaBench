
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_xdomain {int properties_changed_work; TYPE_1__* tb; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int wq; } ;


 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct tb_xdomain* tb_to_xdomain (struct device*) ;

__attribute__((used)) static int update_xdomain(struct device *dev, void *data)
{
 struct tb_xdomain *xd;

 xd = tb_to_xdomain(dev);
 if (xd) {
  queue_delayed_work(xd->tb->wq, &xd->properties_changed_work,
       msecs_to_jiffies(50));
 }

 return 0;
}
