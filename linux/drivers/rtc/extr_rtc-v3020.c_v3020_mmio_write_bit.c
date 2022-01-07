
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3020 {unsigned char leftshift; int ioaddress; } ;


 int writel (unsigned char,int ) ;

__attribute__((used)) static void v3020_mmio_write_bit(struct v3020 *chip, unsigned char bit)
{
 writel(bit << chip->leftshift, chip->ioaddress);
}
