
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_net {int mports; int switches; int devices; int node; } ;
struct rio_mport {struct rio_net* net; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct rio_net* kzalloc (int,int ) ;

struct rio_net *rio_alloc_net(struct rio_mport *mport)
{
 struct rio_net *net = kzalloc(sizeof(*net), GFP_KERNEL);

 if (net) {
  INIT_LIST_HEAD(&net->node);
  INIT_LIST_HEAD(&net->devices);
  INIT_LIST_HEAD(&net->switches);
  INIT_LIST_HEAD(&net->mports);
  mport->net = net;
 }
 return net;
}
