
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int cclk; } ;
struct csio_hw {TYPE_1__ vpd; } ;



__attribute__((used)) static inline uint32_t
csio_core_ticks_to_us(struct csio_hw *hw, uint32_t ticks)
{

 return (ticks * 1000 + hw->vpd.cclk/2) / hw->vpd.cclk;
}
