
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsens_priv {int num_sensors; int dev; } ;
typedef int base0 ;


 scalar_t__ IS_ERR (int*) ;
 int MSM8916_BASE0_MASK ;
 int MSM8916_BASE1_MASK ;
 int MSM8916_BASE1_SHIFT ;
 int MSM8916_CAL_SEL_MASK ;
 int MSM8916_CAL_SEL_SHIFT ;
 int MSM8916_S0_P1_MASK ;
 int MSM8916_S0_P1_SHIFT ;
 int MSM8916_S0_P2_MASK ;
 int MSM8916_S0_P2_SHIFT ;
 int MSM8916_S1_P1_MASK ;
 int MSM8916_S1_P1_SHIFT ;
 int MSM8916_S1_P2_MASK ;
 int MSM8916_S1_P2_SHIFT ;
 int MSM8916_S2_P1_MASK ;
 int MSM8916_S2_P1_SHIFT ;
 int MSM8916_S2_P2_MASK ;
 int MSM8916_S2_P2_SHIFT ;
 int MSM8916_S3_P1_MASK ;
 int MSM8916_S3_P1_SHIFT ;
 int MSM8916_S3_P2_MASK ;
 int MSM8916_S3_P2_SHIFT ;
 int MSM8916_S4_P1_MASK ;
 int MSM8916_S4_P1_SHIFT ;
 int MSM8916_S4_P2_MASK ;
 int MSM8916_S4_P2_SHIFT ;

 int PTR_ERR (int*) ;

 int compute_intercept_slope (struct tsens_priv*,int*,int*,int) ;
 int dev_dbg (int ,char*,int) ;
 int kfree (int*) ;
 scalar_t__ qfprom_read (int ,char*) ;

__attribute__((used)) static int calibrate_8916(struct tsens_priv *priv)
{
 int base0 = 0, base1 = 0, i;
 u32 p1[5], p2[5];
 int mode = 0;
 u32 *qfprom_cdata, *qfprom_csel;

 qfprom_cdata = (u32 *)qfprom_read(priv->dev, "calib");
 if (IS_ERR(qfprom_cdata))
  return PTR_ERR(qfprom_cdata);

 qfprom_csel = (u32 *)qfprom_read(priv->dev, "calib_sel");
 if (IS_ERR(qfprom_csel)) {
  kfree(qfprom_cdata);
  return PTR_ERR(qfprom_csel);
 }

 mode = (qfprom_csel[0] & MSM8916_CAL_SEL_MASK) >> MSM8916_CAL_SEL_SHIFT;
 dev_dbg(priv->dev, "calibration mode is %d\n", mode);

 switch (mode) {
 case 128:
  base1 = (qfprom_cdata[1] & MSM8916_BASE1_MASK) >> MSM8916_BASE1_SHIFT;
  p2[0] = (qfprom_cdata[0] & MSM8916_S0_P2_MASK) >> MSM8916_S0_P2_SHIFT;
  p2[1] = (qfprom_cdata[0] & MSM8916_S1_P2_MASK) >> MSM8916_S1_P2_SHIFT;
  p2[2] = (qfprom_cdata[1] & MSM8916_S2_P2_MASK) >> MSM8916_S2_P2_SHIFT;
  p2[3] = (qfprom_cdata[1] & MSM8916_S3_P2_MASK) >> MSM8916_S3_P2_SHIFT;
  p2[4] = (qfprom_cdata[1] & MSM8916_S4_P2_MASK) >> MSM8916_S4_P2_SHIFT;
  for (i = 0; i < priv->num_sensors; i++)
   p2[i] = ((base1 + p2[i]) << 3);

 case 129:
  base0 = (qfprom_cdata[0] & MSM8916_BASE0_MASK);
  p1[0] = (qfprom_cdata[0] & MSM8916_S0_P1_MASK) >> MSM8916_S0_P1_SHIFT;
  p1[1] = (qfprom_cdata[0] & MSM8916_S1_P1_MASK) >> MSM8916_S1_P1_SHIFT;
  p1[2] = (qfprom_cdata[0] & MSM8916_S2_P1_MASK) >> MSM8916_S2_P1_SHIFT;
  p1[3] = (qfprom_cdata[1] & MSM8916_S3_P1_MASK) >> MSM8916_S3_P1_SHIFT;
  p1[4] = (qfprom_cdata[1] & MSM8916_S4_P1_MASK) >> MSM8916_S4_P1_SHIFT;
  for (i = 0; i < priv->num_sensors; i++)
   p1[i] = (((base0) + p1[i]) << 3);
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
 kfree(qfprom_csel);

 return 0;
}
