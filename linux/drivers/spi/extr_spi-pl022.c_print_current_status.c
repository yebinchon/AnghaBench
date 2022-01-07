
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
typedef void* u16 ;
struct pl022 {TYPE_2__* vendor; int exp_fifo_level; TYPE_1__* adev; int virtbase; } ;
struct TYPE_4__ {int fifodepth; scalar_t__ extended_cr; } ;
struct TYPE_3__ {int dev; } ;


 int SSP_CR0 (int ) ;
 int SSP_CR1 (int ) ;
 int SSP_DMACR (int ) ;
 int SSP_SR (int ) ;
 int dev_warn (int *,char*,int ,...) ;
 void* readl (int ) ;
 void* readw (int ) ;

__attribute__((used)) static void print_current_status(struct pl022 *pl022)
{
 u32 read_cr0;
 u16 read_cr1, read_dmacr, read_sr;

 if (pl022->vendor->extended_cr)
  read_cr0 = readl(SSP_CR0(pl022->virtbase));
 else
  read_cr0 = readw(SSP_CR0(pl022->virtbase));
 read_cr1 = readw(SSP_CR1(pl022->virtbase));
 read_dmacr = readw(SSP_DMACR(pl022->virtbase));
 read_sr = readw(SSP_SR(pl022->virtbase));

 dev_warn(&pl022->adev->dev, "spi-pl022 CR0: %x\n", read_cr0);
 dev_warn(&pl022->adev->dev, "spi-pl022 CR1: %x\n", read_cr1);
 dev_warn(&pl022->adev->dev, "spi-pl022 DMACR: %x\n", read_dmacr);
 dev_warn(&pl022->adev->dev, "spi-pl022 SR: %x\n", read_sr);
 dev_warn(&pl022->adev->dev,
   "spi-pl022 exp_fifo_level/fifodepth: %u/%d\n",
   pl022->exp_fifo_level,
   pl022->vendor->fifodepth);

}
