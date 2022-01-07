
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_spi {unsigned int* tx; } ;



__attribute__((used)) static inline unsigned int hw_txbyte(struct s3c24xx_spi *hw, int count)
{
 return hw->tx ? hw->tx[count] : 0;
}
