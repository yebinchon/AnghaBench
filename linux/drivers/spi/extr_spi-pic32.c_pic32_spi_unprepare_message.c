
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;



__attribute__((used)) static int pic32_spi_unprepare_message(struct spi_master *master,
           struct spi_message *msg)
{

 return 0;
}
