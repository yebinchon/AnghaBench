
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct afs_net {int dummy; } ;
struct afs_cell {int usage; TYPE_1__* vl_servers; scalar_t__ last_inactive; int name; } ;
struct TYPE_2__ {scalar_t__ nr_servers; } ;


 int _enter (char*,int ) ;
 scalar_t__ afs_cell_gc_delay ;
 int afs_set_cell_timer (struct afs_net*,scalar_t__) ;
 int atomic_dec_return (int *) ;
 scalar_t__ ktime_get_real_seconds () ;

void afs_put_cell(struct afs_net *net, struct afs_cell *cell)
{
 time64_t now, expire_delay;

 if (!cell)
  return;

 _enter("%s", cell->name);

 now = ktime_get_real_seconds();
 cell->last_inactive = now;
 expire_delay = 0;
 if (cell->vl_servers->nr_servers)
  expire_delay = afs_cell_gc_delay;

 if (atomic_dec_return(&cell->usage) > 1)
  return;


 afs_set_cell_timer(net, expire_delay);
}
