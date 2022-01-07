
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim_link {int lock; int mode; } ;


 int NFCSIM_MODE_NONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfcsim_link_recv_wake (struct nfcsim_link*) ;

__attribute__((used)) static void nfcsim_link_recv_cancel(struct nfcsim_link *link)
{
 mutex_lock(&link->lock);

 link->mode = NFCSIM_MODE_NONE;

 mutex_unlock(&link->lock);

 nfcsim_link_recv_wake(link);
}
