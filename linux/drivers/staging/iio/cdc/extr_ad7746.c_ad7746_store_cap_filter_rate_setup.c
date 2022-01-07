
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7746_chip_info {int config; } ;


 int AD7746_CONF_CAPFS_MASK ;
 int AD7746_CONF_CAPFS_SHIFT ;
 int ARRAY_SIZE (int**) ;
 int** ad7746_cap_filter_rate_table ;

__attribute__((used)) static int ad7746_store_cap_filter_rate_setup(struct ad7746_chip_info *chip,
           int val)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ad7746_cap_filter_rate_table); i++)
  if (val >= ad7746_cap_filter_rate_table[i][0])
   break;

 if (i >= ARRAY_SIZE(ad7746_cap_filter_rate_table))
  i = ARRAY_SIZE(ad7746_cap_filter_rate_table) - 1;

 chip->config &= ~AD7746_CONF_CAPFS_MASK;
 chip->config |= i << AD7746_CONF_CAPFS_SHIFT;

 return 0;
}
