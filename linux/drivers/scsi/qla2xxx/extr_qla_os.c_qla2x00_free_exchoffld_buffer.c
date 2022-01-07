
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla_hw_data {scalar_t__ exchoffld_size; int * exchoffld_buf; int exchoffld_buf_dma; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,scalar_t__,int *,int ) ;

void
qla2x00_free_exchoffld_buffer(struct qla_hw_data *ha)
{
 if (ha->exchoffld_buf) {
  dma_free_coherent(&ha->pdev->dev, ha->exchoffld_size,
      ha->exchoffld_buf, ha->exchoffld_buf_dma);
  ha->exchoffld_buf = ((void*)0);
  ha->exchoffld_size = 0;
 }
}
