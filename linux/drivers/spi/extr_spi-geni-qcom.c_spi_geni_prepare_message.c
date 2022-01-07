
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int spi; } ;
struct spi_master {int dummy; } ;
struct geni_se {int dummy; } ;
struct spi_geni_master {int dev; struct geni_se se; } ;


 int GENI_SE_FIFO ;
 int dev_err (int ,char*,int) ;
 int geni_se_select_mode (struct geni_se*,int ) ;
 int setup_fifo_params (int ,struct spi_master*) ;
 struct spi_geni_master* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int spi_geni_prepare_message(struct spi_master *spi,
     struct spi_message *spi_msg)
{
 int ret;
 struct spi_geni_master *mas = spi_master_get_devdata(spi);
 struct geni_se *se = &mas->se;

 geni_se_select_mode(se, GENI_SE_FIFO);
 ret = setup_fifo_params(spi_msg->spi, spi);
 if (ret)
  dev_err(mas->dev, "Couldn't select mode %d\n", ret);
 return ret;
}
