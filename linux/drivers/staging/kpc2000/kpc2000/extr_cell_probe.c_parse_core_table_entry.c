
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct core_table_entry {int type; } ;


 int parse_core_table_entry_v0 (struct core_table_entry*,int const) ;

__attribute__((used)) static
void parse_core_table_entry(struct core_table_entry *cte, const u64 read_val, const u8 entry_rev)
{
 switch (entry_rev) {
 case 0:
  parse_core_table_entry_v0(cte, read_val);
  break;
 default:
  cte->type = 0;
  break;
 }
}
