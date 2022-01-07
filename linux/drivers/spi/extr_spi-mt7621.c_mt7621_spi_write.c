
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mt7621_spi {scalar_t__ base; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mt7621_spi_write(struct mt7621_spi *rs, u32 reg, u32 val)
{
 iowrite32(val, rs->base + reg);
}
