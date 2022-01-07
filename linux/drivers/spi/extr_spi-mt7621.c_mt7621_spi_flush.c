
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7621_spi {int dummy; } ;


 int mt7621_spi_read_half_duplex (struct mt7621_spi*,int ,int *) ;

__attribute__((used)) static inline void mt7621_spi_flush(struct mt7621_spi *rs)
{
 mt7621_spi_read_half_duplex(rs, 0, ((void*)0));
}
