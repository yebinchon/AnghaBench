
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rapl_domain {int state; } ;
struct powercap_zone {int dummy; } ;


 int DOMAIN_STATE_BIOS_LOCKED ;
 int EIO ;
 int PL1_ENABLE ;
 int get_online_cpus () ;
 struct rapl_domain* power_zone_to_rapl_domain (struct powercap_zone*) ;
 int put_online_cpus () ;
 scalar_t__ rapl_read_data_raw (struct rapl_domain*,int ,int,int*) ;

__attribute__((used)) static int get_domain_enable(struct powercap_zone *power_zone, bool *mode)
{
 struct rapl_domain *rd = power_zone_to_rapl_domain(power_zone);
 u64 val;

 if (rd->state & DOMAIN_STATE_BIOS_LOCKED) {
  *mode = 0;
  return 0;
 }
 get_online_cpus();
 if (rapl_read_data_raw(rd, PL1_ENABLE, 1, &val)) {
  put_online_cpus();
  return -EIO;
 }
 *mode = val;
 put_online_cpus();

 return 0;
}
