
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tempreg; } ;


 int EINVAL ;
 TYPE_1__ ctrl_cfg ;
 scalar_t__ ec_read (int ,int*) ;

__attribute__((used)) static int acerhdf_get_temp(int *temp)
{
 u8 read_temp;

 if (ec_read(ctrl_cfg.tempreg, &read_temp))
  return -EINVAL;

 *temp = read_temp * 1000;

 return 0;
}
