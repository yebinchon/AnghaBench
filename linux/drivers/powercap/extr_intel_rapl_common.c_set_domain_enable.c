
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_domain {int state; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {int (* set_floor_freq ) (struct rapl_domain*,int) ;} ;


 int DOMAIN_STATE_BIOS_LOCKED ;
 int EACCES ;
 int PL1_ENABLE ;
 int get_online_cpus () ;
 struct rapl_domain* power_zone_to_rapl_domain (struct powercap_zone*) ;
 int put_online_cpus () ;
 TYPE_1__* rapl_defaults ;
 int rapl_write_data_raw (struct rapl_domain*,int ,int) ;
 int stub1 (struct rapl_domain*,int) ;

__attribute__((used)) static int set_domain_enable(struct powercap_zone *power_zone, bool mode)
{
 struct rapl_domain *rd = power_zone_to_rapl_domain(power_zone);

 if (rd->state & DOMAIN_STATE_BIOS_LOCKED)
  return -EACCES;

 get_online_cpus();
 rapl_write_data_raw(rd, PL1_ENABLE, mode);
 if (rapl_defaults->set_floor_freq)
  rapl_defaults->set_floor_freq(rd, mode);
 put_online_cpus();

 return 0;
}
