
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct spi_controller {scalar_t__ bus_num; TYPE_1__ dev; } ;
struct spi_board_info {scalar_t__ bus_num; int modalias; } ;


 int dev_err (int ,char*,int ) ;
 struct spi_device* spi_new_device (struct spi_controller*,struct spi_board_info*) ;

__attribute__((used)) static void spi_match_controller_to_boardinfo(struct spi_controller *ctlr,
           struct spi_board_info *bi)
{
 struct spi_device *dev;

 if (ctlr->bus_num != bi->bus_num)
  return;

 dev = spi_new_device(ctlr, bi);
 if (!dev)
  dev_err(ctlr->dev.parent, "can't create new device for %s\n",
   bi->modalias);
}
