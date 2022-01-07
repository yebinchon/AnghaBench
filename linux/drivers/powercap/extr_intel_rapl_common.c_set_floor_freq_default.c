
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_domain {int dummy; } ;


 int PL1_CLAMP ;
 int PL2_CLAMP ;
 int PL2_ENABLE ;
 int find_nr_power_limit (struct rapl_domain*) ;
 int rapl_write_data_raw (struct rapl_domain*,int ,int) ;

__attribute__((used)) static void set_floor_freq_default(struct rapl_domain *rd, bool mode)
{
 int nr_powerlimit = find_nr_power_limit(rd);




 rapl_write_data_raw(rd, PL1_CLAMP, mode);


 if (nr_powerlimit > 1) {
  rapl_write_data_raw(rd, PL2_ENABLE, mode);
  rapl_write_data_raw(rd, PL2_CLAMP, mode);
 }
}
