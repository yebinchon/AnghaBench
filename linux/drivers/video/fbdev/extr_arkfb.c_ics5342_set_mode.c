
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dac_info {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 int DAC_MAX ;
 TYPE_1__* DAC_PAR (struct dac_info*) ;
 int EINVAL ;
 int dac_write_reg (struct dac_info*,int,int) ;
 int* ics5342_mode_table ;

__attribute__((used)) static int ics5342_set_mode(struct dac_info *info, int mode)
{
 u8 code;

 if (mode >= DAC_MAX)
  return -EINVAL;

 code = ics5342_mode_table[mode];

 if (! code)
  return -EINVAL;

 dac_write_reg(info, 6, code & 0xF0);
 DAC_PAR(info)->mode = mode;

 return 0;
}
