
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; } ;
struct fsl_elbc_gpcm {scalar_t__ bank; int dev; } ;


 int BR_BA ;
 int BR_MSEL ;
 int BR_MS_GPCM ;
 int ENODEV ;
 scalar_t__ MAX_BANKS ;
 int OR_GPCM_AM ;
 int dev_err (int ,char*) ;
 int fsl_lbc_addr (int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int check_of_data(struct fsl_elbc_gpcm *priv,
       struct resource *res,
       u32 reg_br, u32 reg_or)
{

 if (priv->bank >= MAX_BANKS) {
  dev_err(priv->dev, "invalid bank\n");
  return -ENODEV;
 }


 if ((reg_br & BR_MSEL) != BR_MS_GPCM) {
  dev_err(priv->dev, "unsupported mode\n");
  return -ENODEV;
 }


 if ((~(reg_or & OR_GPCM_AM) + 1) != resource_size(res)) {
  dev_err(priv->dev, "address mask / size mismatch\n");
  return -ENODEV;
 }


 if ((reg_br & reg_or & BR_BA) != fsl_lbc_addr(res->start)) {
  dev_err(priv->dev, "base address mismatch\n");
  return -ENODEV;
 }

 return 0;
}
