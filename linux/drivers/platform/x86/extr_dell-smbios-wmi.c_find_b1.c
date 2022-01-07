
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_header {int type; } ;


 int parse_b1_table (struct dmi_header const*) ;

__attribute__((used)) static void find_b1(const struct dmi_header *dm, void *dummy)
{
 switch (dm->type) {
 case 0xb1:
  parse_b1_table(dm);
  break;
 }
}
