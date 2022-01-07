
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {scalar_t__ regbase; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
{
 return readl(csi->regbase + offset);
}
