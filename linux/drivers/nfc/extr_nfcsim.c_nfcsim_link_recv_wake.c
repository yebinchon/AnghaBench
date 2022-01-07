
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim_link {int cond; int recv_wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void nfcsim_link_recv_wake(struct nfcsim_link *link)
{
 link->cond = 1;
 wake_up_interruptible(&link->recv_wait);
}
