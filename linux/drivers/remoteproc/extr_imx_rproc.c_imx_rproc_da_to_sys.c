
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct imx_rproc_dcfg {int att_size; struct imx_rproc_att* att; } ;
struct imx_rproc_att {scalar_t__ da; scalar_t__ size; scalar_t__ sa; } ;
struct imx_rproc {int dev; struct imx_rproc_dcfg* dcfg; } ;


 int ENOENT ;
 int dev_warn (int ,char*,scalar_t__,int) ;

__attribute__((used)) static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
          int len, u64 *sys)
{
 const struct imx_rproc_dcfg *dcfg = priv->dcfg;
 int i;


 for (i = 0; i < dcfg->att_size; i++) {
  const struct imx_rproc_att *att = &dcfg->att[i];

  if (da >= att->da && da + len < att->da + att->size) {
   unsigned int offset = da - att->da;

   *sys = att->sa + offset;
   return 0;
  }
 }

 dev_warn(priv->dev, "Translation failed: da = 0x%llx len = 0x%x\n",
   da, len);
 return -ENOENT;
}
