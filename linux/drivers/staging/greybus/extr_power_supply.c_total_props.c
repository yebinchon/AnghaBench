
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int properties_count; int properties_count_str; } ;



__attribute__((used)) static int total_props(struct gb_power_supply *gbpsy)
{

 return (gbpsy->properties_count + gbpsy->properties_count_str);
}
