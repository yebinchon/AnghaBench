
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132 {int kref; int monitor; } ;


 int kref_get (int *) ;
 scalar_t__ queue_delayed_work (int ,int *,unsigned int) ;
 int workqueue ;

__attribute__((used)) static void u132_monitor_queue_work(struct u132 *u132, unsigned int delta)
{
 if (queue_delayed_work(workqueue, &u132->monitor, delta))
  kref_get(&u132->kref);
}
