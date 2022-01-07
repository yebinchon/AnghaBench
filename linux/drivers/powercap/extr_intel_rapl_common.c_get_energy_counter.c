
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rapl_domain {int dummy; } ;
struct powercap_zone {int dummy; } ;


 int EIO ;
 int ENERGY_COUNTER ;
 int get_online_cpus () ;
 struct rapl_domain* power_zone_to_rapl_domain (struct powercap_zone*) ;
 int put_online_cpus () ;
 int rapl_read_data_raw (struct rapl_domain*,int ,int,int *) ;

__attribute__((used)) static int get_energy_counter(struct powercap_zone *power_zone,
         u64 *energy_raw)
{
 struct rapl_domain *rd;
 u64 energy_now;




 get_online_cpus();
 rd = power_zone_to_rapl_domain(power_zone);

 if (!rapl_read_data_raw(rd, ENERGY_COUNTER, 1, &energy_now)) {
  *energy_raw = energy_now;
  put_online_cpus();

  return 0;
 }
 put_online_cpus();

 return -EIO;
}
