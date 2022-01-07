
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_iodomain {int dev; int grf; TYPE_1__* supplies; } ;
struct TYPE_2__ {int reg; } ;


 int PX30_IO_VSEL ;
 int PX30_IO_VSEL_VCCIO6_SRC ;
 size_t PX30_IO_VSEL_VCCIO6_SUPPLY_NUM ;
 int dev_warn (int ,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void px30_iodomain_init(struct rockchip_iodomain *iod)
{
 int ret;
 u32 val;


 if (!iod->supplies[PX30_IO_VSEL_VCCIO6_SUPPLY_NUM].reg)
  return;





 val = PX30_IO_VSEL_VCCIO6_SRC | (PX30_IO_VSEL_VCCIO6_SRC << 16);
 ret = regmap_write(iod->grf, PX30_IO_VSEL, val);
 if (ret < 0)
  dev_warn(iod->dev, "couldn't update vccio0 ctrl\n");
}
