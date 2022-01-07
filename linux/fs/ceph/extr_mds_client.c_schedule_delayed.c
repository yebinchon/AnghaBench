
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int delayed_work; } ;


 int HZ ;
 unsigned int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,unsigned int) ;

__attribute__((used)) static void schedule_delayed(struct ceph_mds_client *mdsc)
{
 int delay = 5;
 unsigned hz = round_jiffies_relative(HZ * delay);
 schedule_delayed_work(&mdsc->delayed_work, hz);
}
