
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla_hw_data {scalar_t__ exlogin_size; int * exlogin_buf; int exlogin_buf_dma; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,scalar_t__,int *,int ) ;

void
qla2x00_free_exlogin_buffer(struct qla_hw_data *ha)
{
 if (ha->exlogin_buf) {
  dma_free_coherent(&ha->pdev->dev, ha->exlogin_size,
      ha->exlogin_buf, ha->exlogin_buf_dma);
  ha->exlogin_buf = ((void*)0);
  ha->exlogin_size = 0;
 }
}
