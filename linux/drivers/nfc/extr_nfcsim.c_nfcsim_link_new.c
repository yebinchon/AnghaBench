
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcsim_link {int recv_wait; int lock; } ;


 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct nfcsim_link* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct nfcsim_link *nfcsim_link_new(void)
{
 struct nfcsim_link *link;

 link = kzalloc(sizeof(struct nfcsim_link), GFP_KERNEL);
 if (!link)
  return ((void*)0);

 mutex_init(&link->lock);
 init_waitqueue_head(&link->recv_wait);

 return link;
}
