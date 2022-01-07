
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supports_temp; int io_addr; } ;


 int inb (int ) ;
 TYPE_1__ pcwd_private ;

__attribute__((used)) static inline void pcwd_check_temperature_support(void)
{
 if (inb(pcwd_private.io_addr) != 0xF0)
  pcwd_private.supports_temp = 1;
}
