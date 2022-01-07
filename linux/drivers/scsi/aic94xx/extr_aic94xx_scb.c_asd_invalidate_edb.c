
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_el {scalar_t__ flags; } ;
struct empty_scb {scalar_t__ num_valid; struct sg_el* eb; } ;
struct asd_seq_data {struct asd_dma_tok** edb_arr; } ;
struct asd_dma_tok {int vaddr; } ;
struct asd_ascb {int edb_index; TYPE_2__* ha; int list; TYPE_1__* scb; } ;
struct TYPE_4__ {struct asd_seq_data seq; } ;
struct TYPE_3__ {struct empty_scb escb; } ;


 int ASD_EDBS_PER_SCB ;
 int ASD_EDB_SIZE ;
 scalar_t__ ELEMENT_NOT_VALID ;
 int asd_post_escb_list (TYPE_2__*,struct asd_ascb*,int) ;
 int asd_printk (char*,int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int memset (int ,int ,int ) ;

void asd_invalidate_edb(struct asd_ascb *ascb, int edb_id)
{
 struct asd_seq_data *seq = &ascb->ha->seq;
 struct empty_scb *escb = &ascb->scb->escb;
 struct sg_el *eb = &escb->eb[edb_id];
 struct asd_dma_tok *edb = seq->edb_arr[ascb->edb_index + edb_id];

 memset(edb->vaddr, 0, ASD_EDB_SIZE);
 eb->flags |= ELEMENT_NOT_VALID;
 escb->num_valid--;

 if (escb->num_valid == 0) {
  int i;
  escb->num_valid = ASD_EDBS_PER_SCB;
  for (i = 0; i < ASD_EDBS_PER_SCB; i++)
   escb->eb[i].flags = 0;
  if (!list_empty(&ascb->list))
   list_del_init(&ascb->list);
  i = asd_post_escb_list(ascb->ha, ascb, 1);
  if (i)
   asd_printk("couldn't post escb, err:%d\n", i);
 }
}
