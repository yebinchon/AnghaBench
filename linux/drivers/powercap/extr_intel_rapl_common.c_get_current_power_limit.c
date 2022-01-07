
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rapl_domain {TYPE_1__* rpl; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {int prim_id; } ;


 int EINVAL ;
 int EIO ;


 int POWER_LIMIT1 ;
 int POWER_LIMIT2 ;
 int contraint_to_pl (struct rapl_domain*,int) ;
 int get_online_cpus () ;
 struct rapl_domain* power_zone_to_rapl_domain (struct powercap_zone*) ;
 int put_online_cpus () ;
 scalar_t__ rapl_read_data_raw (struct rapl_domain*,int,int,int *) ;

__attribute__((used)) static int get_current_power_limit(struct powercap_zone *power_zone, int cid,
       u64 *data)
{
 struct rapl_domain *rd;
 u64 val;
 int prim;
 int ret = 0;
 int id;

 get_online_cpus();
 rd = power_zone_to_rapl_domain(power_zone);
 id = contraint_to_pl(rd, cid);
 if (id < 0) {
  ret = id;
  goto get_exit;
 }

 switch (rd->rpl[id].prim_id) {
 case 129:
  prim = POWER_LIMIT1;
  break;
 case 128:
  prim = POWER_LIMIT2;
  break;
 default:
  put_online_cpus();
  return -EINVAL;
 }
 if (rapl_read_data_raw(rd, prim, 1, &val))
  ret = -EIO;
 else
  *data = val;

get_exit:
 put_online_cpus();

 return ret;
}
