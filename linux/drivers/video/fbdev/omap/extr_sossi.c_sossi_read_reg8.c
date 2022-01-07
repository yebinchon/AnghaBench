
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int readb (scalar_t__) ;
 TYPE_1__ sossi ;

__attribute__((used)) static inline u8 sossi_read_reg8(int reg)
{
 return readb(sossi.base + reg);
}
