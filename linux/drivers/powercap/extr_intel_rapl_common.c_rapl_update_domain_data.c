
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct rapl_package {int nr_domains; TYPE_3__* domains; int name; } ;
struct TYPE_4__ {int * primitives; } ;
struct TYPE_6__ {TYPE_1__ rdd; int name; } ;
struct TYPE_5__ {int unit; } ;


 int NR_RAW_PRIMITIVES ;
 int pr_debug (char*,int ,int ) ;
 int rapl_read_data_raw (TYPE_3__*,int,int ,int *) ;
 TYPE_2__* rpi ;

__attribute__((used)) static void rapl_update_domain_data(struct rapl_package *rp)
{
 int dmn, prim;
 u64 val;

 for (dmn = 0; dmn < rp->nr_domains; dmn++) {
  pr_debug("update %s domain %s data\n", rp->name,
    rp->domains[dmn].name);

  for (prim = 0; prim < NR_RAW_PRIMITIVES; prim++) {
   if (!rapl_read_data_raw(&rp->domains[dmn], prim,
      rpi[prim].unit, &val))
    rp->domains[dmn].rdd.primitives[prim] = val;
  }
 }

}
