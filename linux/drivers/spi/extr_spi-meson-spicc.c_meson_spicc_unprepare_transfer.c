
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_master {int dummy; } ;
struct meson_spicc_device {TYPE_1__* pdev; scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SPICC_CONREG ;
 int SPICC_ENABLE ;
 scalar_t__ SPICC_INTREG ;
 int device_reset_optional (int *) ;
 struct meson_spicc_device* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;

__attribute__((used)) static int meson_spicc_unprepare_transfer(struct spi_master *master)
{
 struct meson_spicc_device *spicc = spi_master_get_devdata(master);


 writel(0, spicc->base + SPICC_INTREG);


 writel_bits_relaxed(SPICC_ENABLE, 0, spicc->base + SPICC_CONREG);

 device_reset_optional(&spicc->pdev->dev);

 return 0;
}
