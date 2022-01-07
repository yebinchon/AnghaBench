
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct afs_net {int fs_timer; scalar_t__ live; } ;


 int HZ ;
 int afs_dec_servers_outstanding (struct afs_net*) ;
 int afs_inc_servers_outstanding (struct afs_net*) ;
 scalar_t__ jiffies ;
 scalar_t__ timer_reduce (int *,scalar_t__) ;

__attribute__((used)) static void afs_set_server_timer(struct afs_net *net, time64_t delay)
{
 if (net->live) {
  afs_inc_servers_outstanding(net);
  if (timer_reduce(&net->fs_timer, jiffies + delay * HZ))
   afs_dec_servers_outstanding(net);
 }
}
