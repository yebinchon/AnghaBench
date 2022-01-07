
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct afs_net {int cells_timer; int cells_outstanding; scalar_t__ live; } ;


 int HZ ;
 int afs_dec_cells_outstanding (struct afs_net*) ;
 int atomic_inc (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ timer_reduce (int *,scalar_t__) ;

__attribute__((used)) static void afs_set_cell_timer(struct afs_net *net, time64_t delay)
{
 if (net->live) {
  atomic_inc(&net->cells_outstanding);
  if (timer_reduce(&net->cells_timer, jiffies + delay * HZ))
   afs_dec_cells_outstanding(net);
 }
}
