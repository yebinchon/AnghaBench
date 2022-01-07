
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7_csi {int dummy; } ;


 int CSI_CSIFBUF_PARA ;
 int imx7_csi_reg_write (struct imx7_csi*,int ,int ) ;

__attribute__((used)) static void imx7_csi_buf_stride_set(struct imx7_csi *csi, u32 stride)
{
 imx7_csi_reg_write(csi, stride, CSI_CSIFBUF_PARA);
}
