
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int release; int * parent; } ;
struct rio_net {TYPE_1__ dev; int id; struct rio_mport* hport; int release; struct rio_id_table* enum_data; } ;
struct rio_mport {int dev; int id; int sys_size; } ;
struct rio_id_table {int lock; int max; int start; } ;


 int BITS_TO_LONGS (int ) ;
 int GFP_KERNEL ;
 int RIO_MAX_ROUTE_ENTRIES (int ) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 struct rio_id_table* kzalloc (size_t,int ) ;
 int pr_err (char*) ;
 int rio_add_net (struct rio_net*) ;
 struct rio_net* rio_alloc_net (struct rio_mport*) ;
 int rio_free_net (struct rio_net*) ;
 int rio_scan_release_dev ;
 int rio_scan_release_net ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct rio_net *rio_scan_alloc_net(struct rio_mport *mport,
       int do_enum, u16 start)
{
 struct rio_net *net;

 net = rio_alloc_net(mport);

 if (net && do_enum) {
  struct rio_id_table *idtab;
  size_t size;

  size = sizeof(struct rio_id_table) +
    BITS_TO_LONGS(
     RIO_MAX_ROUTE_ENTRIES(mport->sys_size)
     ) * sizeof(long);

  idtab = kzalloc(size, GFP_KERNEL);

  if (idtab == ((void*)0)) {
   pr_err("RIO: failed to allocate destID table\n");
   rio_free_net(net);
   net = ((void*)0);
  } else {
   net->enum_data = idtab;
   net->release = rio_scan_release_net;
   idtab->start = start;
   idtab->max = RIO_MAX_ROUTE_ENTRIES(mport->sys_size);
   spin_lock_init(&idtab->lock);
  }
 }

 if (net) {
  net->id = mport->id;
  net->hport = mport;
  dev_set_name(&net->dev, "rnet_%d", net->id);
  net->dev.parent = &mport->dev;
  net->dev.release = rio_scan_release_dev;
  rio_add_net(net);
 }

 return net;
}
