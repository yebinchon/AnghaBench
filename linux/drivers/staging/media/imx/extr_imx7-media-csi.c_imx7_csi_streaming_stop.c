
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7_csi {int dummy; } ;


 int imx7_csi_disable (struct imx7_csi*) ;
 int imx7_csi_dma_stop (struct imx7_csi*) ;

__attribute__((used)) static int imx7_csi_streaming_stop(struct imx7_csi *csi)
{
 imx7_csi_dma_stop(csi);

 imx7_csi_disable(csi);

 return 0;
}
