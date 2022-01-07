
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct sockaddr_storage local_addr; } ;
struct cxgbit_np {TYPE_2__ com; } ;
struct cxgbit_device {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 struct cxgbit_device* cxgbit_find_device (struct net_device*,int *) ;
 struct net_device* cxgbit_ipv4_netdev (int ) ;
 struct net_device* cxgbit_ipv6_netdev (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct cxgbit_device *cxgbit_find_np_cdev(struct cxgbit_np *cnp)
{
 struct sockaddr_storage *sockaddr = &cnp->com.local_addr;
 int ss_family = sockaddr->ss_family;
 struct net_device *ndev = ((void*)0);
 struct cxgbit_device *cdev = ((void*)0);

 rcu_read_lock();
 if (ss_family == AF_INET) {
  struct sockaddr_in *sin;

  sin = (struct sockaddr_in *)sockaddr;
  ndev = cxgbit_ipv4_netdev(sin->sin_addr.s_addr);
 } else if (ss_family == AF_INET6) {
  struct sockaddr_in6 *sin6;

  sin6 = (struct sockaddr_in6 *)sockaddr;
  ndev = cxgbit_ipv6_netdev(&sin6->sin6_addr);
 }
 if (!ndev)
  goto out;

 cdev = cxgbit_find_device(ndev, ((void*)0));
out:
 rcu_read_unlock();
 return cdev;
}
