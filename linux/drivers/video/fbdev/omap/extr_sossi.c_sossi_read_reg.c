
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int readl (scalar_t__) ;
 TYPE_1__ sossi ;

__attribute__((used)) static inline u32 sossi_read_reg(int reg)
{
 return readl(sossi.base + reg);
}
