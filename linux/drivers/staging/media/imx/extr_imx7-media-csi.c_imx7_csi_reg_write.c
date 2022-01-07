
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {scalar_t__ regbase; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void imx7_csi_reg_write(struct imx7_csi *csi, unsigned int value,
          unsigned int offset)
{
 writel(value, csi->regbase + offset);
}
