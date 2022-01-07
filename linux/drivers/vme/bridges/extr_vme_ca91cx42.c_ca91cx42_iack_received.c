
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ca91cx42_driver {scalar_t__ base; } ;


 scalar_t__ LINT_STAT ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static int ca91cx42_iack_received(struct ca91cx42_driver *bridge, int level)
{
 u32 tmp;

 tmp = ioread32(bridge->base + LINT_STAT);

 if (tmp & (1 << level))
  return 0;
 else
  return 1;
}
