
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atp_unit {TYPE_2__** id; TYPE_1__* pdev; } ;
struct Scsi_Host {int hostdata; } ;
struct TYPE_4__ {int * prd_table; int prd_bus; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void atp870u_free_tables(struct Scsi_Host *host)
{
 struct atp_unit *atp_dev = (struct atp_unit *)&host->hostdata;
 int j, k;
 for (j=0; j < 2; j++) {
  for (k = 0; k < 16; k++) {
   if (!atp_dev->id[j][k].prd_table)
    continue;
   dma_free_coherent(&atp_dev->pdev->dev, 1024, atp_dev->id[j][k].prd_table, atp_dev->id[j][k].prd_bus);
   atp_dev->id[j][k].prd_table = ((void*)0);
  }
 }
}
