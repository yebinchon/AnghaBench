
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_iodomain_supply {int idx; struct rockchip_iodomain* iod; } ;
struct rockchip_iodomain {int dev; TYPE_1__* soc_data; int grf; } ;
struct TYPE_2__ {int grf_offset; } ;


 int BIT (int) ;
 int MAX_VOLTAGE_1_8 ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rockchip_iodomain_write(struct rockchip_iodomain_supply *supply,
       int uV)
{
 struct rockchip_iodomain *iod = supply->iod;
 u32 val;
 int ret;


 val = (uV > MAX_VOLTAGE_1_8) ? 0 : 1;
 val <<= supply->idx;


 val |= (BIT(supply->idx) << 16);

 ret = regmap_write(iod->grf, iod->soc_data->grf_offset, val);
 if (ret)
  dev_err(iod->dev, "Couldn't write to GRF\n");

 return ret;
}
