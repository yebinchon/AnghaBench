
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct geni_se {int dummy; } ;
struct spi_geni_master {int dev; int xfer_done; int cur_mcmd; struct geni_se se; } ;
struct spi_device {int mode; int master; } ;


 int CMD_CS ;
 int HZ ;
 int SPI_CS_ASSERT ;
 int SPI_CS_DEASSERT ;
 int SPI_CS_HIGH ;
 struct spi_master* dev_get_drvdata (int ) ;
 int geni_se_setup_m_cmd (struct geni_se*,int ,int ) ;
 int handle_fifo_timeout (struct spi_master*,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int reinit_completion (int *) ;
 struct spi_geni_master* spi_master_get_devdata (int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void spi_geni_set_cs(struct spi_device *slv, bool set_flag)
{
 struct spi_geni_master *mas = spi_master_get_devdata(slv->master);
 struct spi_master *spi = dev_get_drvdata(mas->dev);
 struct geni_se *se = &mas->se;
 unsigned long time_left;

 reinit_completion(&mas->xfer_done);
 pm_runtime_get_sync(mas->dev);
 if (!(slv->mode & SPI_CS_HIGH))
  set_flag = !set_flag;

 mas->cur_mcmd = CMD_CS;
 if (set_flag)
  geni_se_setup_m_cmd(se, SPI_CS_ASSERT, 0);
 else
  geni_se_setup_m_cmd(se, SPI_CS_DEASSERT, 0);

 time_left = wait_for_completion_timeout(&mas->xfer_done, HZ);
 if (!time_left)
  handle_fifo_timeout(spi, ((void*)0));

 pm_runtime_put(mas->dev);
}
