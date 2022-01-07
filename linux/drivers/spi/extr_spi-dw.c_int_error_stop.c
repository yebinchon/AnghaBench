
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dw_spi {TYPE_2__* master; } ;
struct TYPE_4__ {TYPE_1__* cur_msg; int dev; } ;
struct TYPE_3__ {int status; } ;


 int EIO ;
 int dev_err (int *,char*,char const*) ;
 int spi_finalize_current_transfer (TYPE_2__*) ;
 int spi_reset_chip (struct dw_spi*) ;

__attribute__((used)) static void int_error_stop(struct dw_spi *dws, const char *msg)
{
 spi_reset_chip(dws);

 dev_err(&dws->master->dev, "%s\n", msg);
 dws->master->cur_msg->status = -EIO;
 spi_finalize_current_transfer(dws->master);
}
