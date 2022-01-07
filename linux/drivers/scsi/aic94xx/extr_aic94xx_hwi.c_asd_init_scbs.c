
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scb {int dummy; } ;
struct TYPE_4__ {int size; int vaddr; int dma_handle; } ;
struct asd_seq_data {int tc_index_bitmap_bits; int pend_q; int pend_q_lock; scalar_t__ pending; int * tc_index_array; int * tc_index_bitmap; TYPE_2__ next_scb; int tc_index_lock; } ;
struct TYPE_3__ {int max_scbs; } ;
struct asd_ha_struct {struct asd_seq_data seq; int scb_pool; TYPE_1__ hw_prof; } ;


 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dma_pool_alloc (int ,int ,int *) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int asd_init_scbs(struct asd_ha_struct *asd_ha)
{
 struct asd_seq_data *seq = &asd_ha->seq;
 int bitmap_bytes;


 asd_ha->seq.tc_index_bitmap_bits = asd_ha->hw_prof.max_scbs;
 asd_ha->seq.tc_index_array = kcalloc(asd_ha->seq.tc_index_bitmap_bits,
          sizeof(void *),
          GFP_KERNEL);
 if (!asd_ha->seq.tc_index_array)
  return -ENOMEM;

 bitmap_bytes = (asd_ha->seq.tc_index_bitmap_bits+7)/8;
 bitmap_bytes = BITS_TO_LONGS(bitmap_bytes*8)*sizeof(unsigned long);
 asd_ha->seq.tc_index_bitmap = kzalloc(bitmap_bytes, GFP_KERNEL);
 if (!asd_ha->seq.tc_index_bitmap) {
  kfree(asd_ha->seq.tc_index_array);
  asd_ha->seq.tc_index_array = ((void*)0);
  return -ENOMEM;
 }

 spin_lock_init(&seq->tc_index_lock);

 seq->next_scb.size = sizeof(struct scb);
 seq->next_scb.vaddr = dma_pool_alloc(asd_ha->scb_pool, GFP_KERNEL,
          &seq->next_scb.dma_handle);
 if (!seq->next_scb.vaddr) {
  kfree(asd_ha->seq.tc_index_bitmap);
  kfree(asd_ha->seq.tc_index_array);
  asd_ha->seq.tc_index_bitmap = ((void*)0);
  asd_ha->seq.tc_index_array = ((void*)0);
  return -ENOMEM;
 }

 seq->pending = 0;
 spin_lock_init(&seq->pend_q_lock);
 INIT_LIST_HEAD(&seq->pend_q);

 return 0;
}
