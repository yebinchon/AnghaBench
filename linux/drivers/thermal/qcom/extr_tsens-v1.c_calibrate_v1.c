
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsens_priv {int num_sensors; int dev; } ;
typedef int base0 ;


 int BASE0_MASK ;
 int BASE0_SHIFT ;
 int BASE1_MASK ;
 int BASE1_SHIFT ;
 int CAL_SEL_MASK ;
 int CAL_SEL_SHIFT ;
 scalar_t__ IS_ERR (int*) ;

 int PTR_ERR (int*) ;
 int S0_P1_MASK ;
 int S0_P1_SHIFT ;
 int S0_P2_MASK ;
 int S0_P2_SHIFT ;
 int S1_P1_MASK ;
 int S1_P1_SHIFT ;
 int S1_P2_MASK ;
 int S1_P2_SHIFT ;
 int S2_P1_MASK ;
 int S2_P1_SHIFT ;
 int S2_P2_MASK_1_0 ;
 int S2_P2_MASK_5_2 ;
 int S2_P2_SHIFT_1_0 ;
 int S2_P2_SHIFT_5_2 ;
 int S3_P1_MASK ;
 int S3_P1_SHIFT ;
 int S3_P2_MASK ;
 int S3_P2_SHIFT ;
 int S4_P1_MASK ;
 int S4_P1_SHIFT ;
 int S4_P2_MASK ;
 int S4_P2_SHIFT ;
 int S5_P1_MASK ;
 int S5_P1_SHIFT ;
 int S5_P2_MASK ;
 int S5_P2_SHIFT ;
 int S6_P1_MASK ;
 int S6_P1_SHIFT ;
 int S6_P2_MASK ;
 int S6_P2_SHIFT ;
 int S7_P1_MASK ;
 int S7_P1_SHIFT ;
 int S7_P2_MASK_1_0 ;
 int S7_P2_MASK_5_2 ;
 int S7_P2_SHIFT_1_0 ;
 int S7_P2_SHIFT_5_2 ;
 int S8_P1_MASK ;
 int S8_P1_SHIFT ;
 int S8_P2_MASK ;
 int S8_P2_SHIFT ;
 int S9_P1_MASK ;
 int S9_P1_SHIFT ;
 int S9_P2_MASK ;
 int S9_P2_SHIFT ;

 int compute_intercept_slope (struct tsens_priv*,int*,int*,int) ;
 int dev_dbg (int ,char*,int) ;
 int kfree (int*) ;
 scalar_t__ qfprom_read (int ,char*) ;

__attribute__((used)) static int calibrate_v1(struct tsens_priv *priv)
{
 u32 base0 = 0, base1 = 0;
 u32 p1[10], p2[10];
 u32 mode = 0, lsb = 0, msb = 0;
 u32 *qfprom_cdata;
 int i;

 qfprom_cdata = (u32 *)qfprom_read(priv->dev, "calib");
 if (IS_ERR(qfprom_cdata))
  return PTR_ERR(qfprom_cdata);

 mode = (qfprom_cdata[4] & CAL_SEL_MASK) >> CAL_SEL_SHIFT;
 dev_dbg(priv->dev, "calibration mode is %d\n", mode);

 switch (mode) {
 case 128:
  base1 = (qfprom_cdata[4] & BASE1_MASK) >> BASE1_SHIFT;
  p2[0] = (qfprom_cdata[0] & S0_P2_MASK) >> S0_P2_SHIFT;
  p2[1] = (qfprom_cdata[0] & S1_P2_MASK) >> S1_P2_SHIFT;

  lsb = (qfprom_cdata[0] & S2_P2_MASK_1_0) >> S2_P2_SHIFT_1_0;
  msb = (qfprom_cdata[1] & S2_P2_MASK_5_2) >> S2_P2_SHIFT_5_2;
  p2[2] = msb << 2 | lsb;
  p2[3] = (qfprom_cdata[1] & S3_P2_MASK) >> S3_P2_SHIFT;
  p2[4] = (qfprom_cdata[1] & S4_P2_MASK) >> S4_P2_SHIFT;
  p2[5] = (qfprom_cdata[2] & S5_P2_MASK) >> S5_P2_SHIFT;
  p2[6] = (qfprom_cdata[2] & S6_P2_MASK) >> S6_P2_SHIFT;

  lsb = (qfprom_cdata[2] & S7_P2_MASK_1_0) >> S7_P2_SHIFT_1_0;
  msb = (qfprom_cdata[3] & S7_P2_MASK_5_2) >> S7_P2_SHIFT_5_2;
  p2[7] = msb << 2 | lsb;
  p2[8] = (qfprom_cdata[3] & S8_P2_MASK) >> S8_P2_SHIFT;
  p2[9] = (qfprom_cdata[3] & S9_P2_MASK) >> S9_P2_SHIFT;
  for (i = 0; i < priv->num_sensors; i++)
   p2[i] = ((base1 + p2[i]) << 2);

 case 129:
  base0 = (qfprom_cdata[4] & BASE0_MASK) >> BASE0_SHIFT;
  p1[0] = (qfprom_cdata[0] & S0_P1_MASK) >> S0_P1_SHIFT;
  p1[1] = (qfprom_cdata[0] & S1_P1_MASK) >> S1_P1_SHIFT;
  p1[2] = (qfprom_cdata[0] & S2_P1_MASK) >> S2_P1_SHIFT;
  p1[3] = (qfprom_cdata[1] & S3_P1_MASK) >> S3_P1_SHIFT;
  p1[4] = (qfprom_cdata[1] & S4_P1_MASK) >> S4_P1_SHIFT;
  p1[5] = (qfprom_cdata[2] & S5_P1_MASK) >> S5_P1_SHIFT;
  p1[6] = (qfprom_cdata[2] & S6_P1_MASK) >> S6_P1_SHIFT;
  p1[7] = (qfprom_cdata[2] & S7_P1_MASK) >> S7_P1_SHIFT;
  p1[8] = (qfprom_cdata[3] & S8_P1_MASK) >> S8_P1_SHIFT;
  p1[9] = (qfprom_cdata[3] & S9_P1_MASK) >> S9_P1_SHIFT;
  for (i = 0; i < priv->num_sensors; i++)
   p1[i] = (((base0) + p1[i]) << 2);
  break;
 default:
  for (i = 0; i < priv->num_sensors; i++) {
   p1[i] = 500;
   p2[i] = 780;
  }
  break;
 }

 compute_intercept_slope(priv, p1, p2, mode);
 kfree(qfprom_cdata);

 return 0;
}
