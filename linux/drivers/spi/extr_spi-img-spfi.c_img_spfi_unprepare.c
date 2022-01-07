
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct img_spfi {int dummy; } ;


 int spfi_reset (struct img_spfi*) ;
 struct img_spfi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int img_spfi_unprepare(struct spi_master *master,
         struct spi_message *msg)
{
 struct img_spfi *spfi = spi_master_get_devdata(master);

 spfi_reset(spfi);

 return 0;
}
