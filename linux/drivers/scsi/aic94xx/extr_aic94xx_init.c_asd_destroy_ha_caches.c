
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct asd_phy {int * id_frm_tok; } ;
struct TYPE_7__ {int * vaddr; int dma_handle; } ;
struct TYPE_8__ {TYPE_3__ next_scb; int * dl; int * actual_dl; int * tc_index_bitmap; int * tc_index_array; scalar_t__ edb_arr; scalar_t__ escb_arr; } ;
struct TYPE_5__ {int * area; } ;
struct TYPE_6__ {TYPE_1__ ue; int * ddb_bitmap; int * scb_ext; int * ddb_ext; } ;
struct asd_ha_struct {int * scb_pool; TYPE_4__ seq; TYPE_2__ hw_prof; struct asd_phy* phys; } ;


 int ASD_MAX_PHYS ;
 int asd_free_coherent (struct asd_ha_struct*,int *) ;
 int asd_free_edbs (struct asd_ha_struct*) ;
 int asd_free_escbs (struct asd_ha_struct*) ;
 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void asd_destroy_ha_caches(struct asd_ha_struct *asd_ha)
{
 int i;

 if (asd_ha->hw_prof.ddb_ext)
  asd_free_coherent(asd_ha, asd_ha->hw_prof.ddb_ext);
 if (asd_ha->hw_prof.scb_ext)
  asd_free_coherent(asd_ha, asd_ha->hw_prof.scb_ext);

 kfree(asd_ha->hw_prof.ddb_bitmap);
 asd_ha->hw_prof.ddb_bitmap = ((void*)0);

 for (i = 0; i < ASD_MAX_PHYS; i++) {
  struct asd_phy *phy = &asd_ha->phys[i];

  asd_free_coherent(asd_ha, phy->id_frm_tok);
 }
 if (asd_ha->seq.escb_arr)
  asd_free_escbs(asd_ha);
 if (asd_ha->seq.edb_arr)
  asd_free_edbs(asd_ha);
 if (asd_ha->hw_prof.ue.area) {
  kfree(asd_ha->hw_prof.ue.area);
  asd_ha->hw_prof.ue.area = ((void*)0);
 }
 if (asd_ha->seq.tc_index_array) {
  kfree(asd_ha->seq.tc_index_array);
  kfree(asd_ha->seq.tc_index_bitmap);
  asd_ha->seq.tc_index_array = ((void*)0);
  asd_ha->seq.tc_index_bitmap = ((void*)0);
 }
 if (asd_ha->seq.actual_dl) {
   asd_free_coherent(asd_ha, asd_ha->seq.actual_dl);
   asd_ha->seq.actual_dl = ((void*)0);
   asd_ha->seq.dl = ((void*)0);
 }
 if (asd_ha->seq.next_scb.vaddr) {
  dma_pool_free(asd_ha->scb_pool, asd_ha->seq.next_scb.vaddr,
         asd_ha->seq.next_scb.dma_handle);
  asd_ha->seq.next_scb.vaddr = ((void*)0);
 }
 dma_pool_destroy(asd_ha->scb_pool);
 asd_ha->scb_pool = ((void*)0);
}
