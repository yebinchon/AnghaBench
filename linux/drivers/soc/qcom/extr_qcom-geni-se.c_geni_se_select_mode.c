
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_se {int dummy; } ;
typedef enum geni_se_xfer_mode { ____Placeholder_geni_se_xfer_mode } geni_se_xfer_mode ;





 int WARN_ON (int) ;
 int geni_se_select_dma_mode (struct geni_se*) ;
 int geni_se_select_fifo_mode (struct geni_se*) ;

void geni_se_select_mode(struct geni_se *se, enum geni_se_xfer_mode mode)
{
 WARN_ON(mode != 129 && mode != 130);

 switch (mode) {
 case 129:
  geni_se_select_fifo_mode(se);
  break;
 case 130:
  geni_se_select_dma_mode(se);
  break;
 case 128:
 default:
  break;
 }
}
