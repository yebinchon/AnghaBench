
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_header {int type; } ;


 int parse_da_table (struct dmi_header const*) ;

__attribute__((used)) static void find_cmd_address(const struct dmi_header *dm, void *dummy)
{
 switch (dm->type) {
 case 0xda:
  parse_da_table(dm);
  break;
 }
}
