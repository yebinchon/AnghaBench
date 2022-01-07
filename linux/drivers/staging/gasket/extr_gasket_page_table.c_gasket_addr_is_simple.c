
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct gasket_page_table {int extended_flag; } ;
typedef int addr ;



__attribute__((used)) static inline bool gasket_addr_is_simple(struct gasket_page_table *pg_tbl,
      ulong addr)
{
 return !((addr) & (pg_tbl)->extended_flag);
}
