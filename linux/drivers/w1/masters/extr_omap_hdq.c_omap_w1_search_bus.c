
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* w1_slave_found_callback ) (struct w1_master*,int) ;
typedef int u8 ;
typedef int u64 ;
struct w1_master {int dummy; } ;


 int cpu_to_le64 (int) ;
 int w1_calc_crc8 (int *,int) ;
 int w1_id ;

__attribute__((used)) static void omap_w1_search_bus(void *_hdq, struct w1_master *master_dev,
  u8 search_type, w1_slave_found_callback slave_found)
{
 u64 module_id, rn_le, cs, id;

 if (w1_id)
  module_id = w1_id;
 else
  module_id = 0x1;

 rn_le = cpu_to_le64(module_id);




 cs = w1_calc_crc8((u8 *)&rn_le, 7);
 id = (cs << 56) | module_id;

 slave_found(master_dev, id);
}
