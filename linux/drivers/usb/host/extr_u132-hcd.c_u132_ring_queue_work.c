
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_ring {int dummy; } ;
struct u132 {int kref; } ;


 int kref_get (int *) ;
 int u132_ring_requeue_work (struct u132*,struct u132_ring*,unsigned int) ;

__attribute__((used)) static void u132_ring_queue_work(struct u132 *u132, struct u132_ring *ring,
 unsigned int delta)
{
 kref_get(&u132->kref);
 u132_ring_requeue_work(u132, ring, delta);
}
