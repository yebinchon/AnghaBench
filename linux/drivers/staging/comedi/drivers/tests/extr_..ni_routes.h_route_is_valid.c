
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_tables {int dummy; } ;


 scalar_t__ ni_route_to_register (int const,int const,struct ni_route_tables const*) ;

__attribute__((used)) static inline bool route_is_valid(const int src, const int dest,
      const struct ni_route_tables *tables)
{
 return ni_route_to_register(src, dest, tables) >= 0;
}
