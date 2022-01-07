
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; int map; } ;
struct mvebu_mpp_ctrl_data {TYPE_1__ regmap; } ;


 unsigned int MVEBU_MPPS_PER_REG ;
 unsigned int MVEBU_MPP_BITS ;
 unsigned int MVEBU_MPP_MASK ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

int mvebu_regmap_mpp_ctrl_get(struct mvebu_mpp_ctrl_data *data,
         unsigned int pid, unsigned long *config)
{
 unsigned off = (pid / MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
 unsigned shift = (pid % MVEBU_MPPS_PER_REG) * MVEBU_MPP_BITS;
 unsigned int val;
 int err;

 err = regmap_read(data->regmap.map, data->regmap.offset + off, &val);
 if (err)
  return err;

 *config = (val >> shift) & MVEBU_MPP_MASK;

 return 0;
}
