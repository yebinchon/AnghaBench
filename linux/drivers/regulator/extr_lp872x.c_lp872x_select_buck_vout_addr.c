
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp872x {int dvs_pin; } ;
typedef enum lp872x_regulator_id { ____Placeholder_lp872x_regulator_id } lp872x_regulator_id ;


 int DVS_HIGH ;
 int LP8720_BUCK_VOUT1 ;
 int LP8720_BUCK_VOUT2 ;
 int LP8720_DVS_SEL_M ;
 int LP8720_ENABLE ;
 int LP8720_EXT_DVS_M ;

 int LP8725_BUCK1_VOUT1 ;
 int LP8725_BUCK1_VOUT2 ;
 int LP8725_BUCK2_VOUT1 ;
 int LP8725_BUCK2_VOUT2 ;
 int LP8725_DVS1_M ;
 int LP8725_DVS2_M ;


 int LP872X_GENERAL_CFG ;
 scalar_t__ lp872x_read_byte (struct lp872x*,int ,int*) ;

__attribute__((used)) static u8 lp872x_select_buck_vout_addr(struct lp872x *lp,
    enum lp872x_regulator_id buck)
{
 u8 val, addr;

 if (lp872x_read_byte(lp, LP872X_GENERAL_CFG, &val))
  return 0;

 switch (buck) {
 case 130:
  if (val & LP8720_EXT_DVS_M) {
   addr = (lp->dvs_pin == DVS_HIGH) ?
    LP8720_BUCK_VOUT1 : LP8720_BUCK_VOUT2;
  } else {
   if (lp872x_read_byte(lp, LP8720_ENABLE, &val))
    return 0;

   addr = val & LP8720_DVS_SEL_M ?
    LP8720_BUCK_VOUT1 : LP8720_BUCK_VOUT2;
  }
  break;
 case 129:
  if (val & LP8725_DVS1_M)
   addr = LP8725_BUCK1_VOUT1;
  else
   addr = (lp->dvs_pin == DVS_HIGH) ?
    LP8725_BUCK1_VOUT1 : LP8725_BUCK1_VOUT2;
  break;
 case 128:
  addr = val & LP8725_DVS2_M ?
   LP8725_BUCK2_VOUT1 : LP8725_BUCK2_VOUT2;
  break;
 default:
  return 0;
 }

 return addr;
}
