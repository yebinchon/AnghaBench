
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int map ;
 int mask ;
 int mdelay (int) ;
 int offset ;
 int pr_emerg (char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int value ;

__attribute__((used)) static void syscon_poweroff(void)
{

 regmap_update_bits(map, offset, mask, value);

 mdelay(1000);

 pr_emerg("Unable to poweroff system\n");
}
