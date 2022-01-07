
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_4__ {scalar_t__ fce_enabled; } ;
struct qla_hw_data {scalar_t__ fw_dump_len; int * fw_dump; scalar_t__ fw_dump_reading; scalar_t__ fw_dump_cap_flags; scalar_t__ fw_dumped; scalar_t__ eft_dma; int * eft; TYPE_2__ flags; scalar_t__ fce_dma; int * fce; TYPE_1__* pdev; struct fwdt* fwdt; } ;
struct fwdt {scalar_t__ length; int * template; } ;
struct TYPE_3__ {int dev; } ;


 int EFT_SIZE ;
 int FCE_SIZE ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int vfree (int *) ;

__attribute__((used)) static void
qla2x00_free_fw_dump(struct qla_hw_data *ha)
{
 struct fwdt *fwdt = ha->fwdt;
 uint j;

 if (ha->fce)
  dma_free_coherent(&ha->pdev->dev,
      FCE_SIZE, ha->fce, ha->fce_dma);

 if (ha->eft)
  dma_free_coherent(&ha->pdev->dev,
      EFT_SIZE, ha->eft, ha->eft_dma);

 if (ha->fw_dump)
  vfree(ha->fw_dump);

 ha->fce = ((void*)0);
 ha->fce_dma = 0;
 ha->flags.fce_enabled = 0;
 ha->eft = ((void*)0);
 ha->eft_dma = 0;
 ha->fw_dumped = 0;
 ha->fw_dump_cap_flags = 0;
 ha->fw_dump_reading = 0;
 ha->fw_dump = ((void*)0);
 ha->fw_dump_len = 0;

 for (j = 0; j < 2; j++, fwdt++) {
  if (fwdt->template)
   vfree(fwdt->template);
  fwdt->template = ((void*)0);
  fwdt->length = 0;
 }
}
