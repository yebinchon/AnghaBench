
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788_buck {int lp; } ;
typedef enum lp8788_dvs_mode { ____Placeholder_lp8788_dvs_mode } lp8788_dvs_mode ;
typedef enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;




 int EXTPIN ;
 int LP8788_BUCK1_DVS_SEL_M ;
 int LP8788_BUCK2_DVS_SEL_M ;
 int LP8788_BUCK_DVS_SEL ;
 int REGISTER ;
 int lp8788_read_byte (int ,int ,int*) ;

__attribute__((used)) static enum lp8788_dvs_mode
lp8788_get_buck_dvs_ctrl_mode(struct lp8788_buck *buck, enum lp8788_buck_id id)
{
 u8 val, mask;

 switch (id) {
 case 129:
  mask = LP8788_BUCK1_DVS_SEL_M;
  break;
 case 128:
  mask = LP8788_BUCK2_DVS_SEL_M;
  break;
 default:
  return REGISTER;
 }

 lp8788_read_byte(buck->lp, LP8788_BUCK_DVS_SEL, &val);

 return val & mask ? REGISTER : EXTPIN;
}
