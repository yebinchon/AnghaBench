
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct asd_seq_data {int num_edbs; TYPE_1__** edb_arr; } ;
struct asd_ha_struct {struct asd_seq_data seq; } ;
typedef int gfp_t ;
struct TYPE_5__ {int vaddr; } ;


 int ASD_DPRINTK (char*,int) ;
 int ASD_EDB_SIZE ;
 int ENOMEM ;
 TYPE_1__* asd_alloc_coherent (struct asd_ha_struct*,int ,int ) ;
 int asd_free_coherent (struct asd_ha_struct*,TYPE_1__*) ;
 int kfree (TYPE_1__**) ;
 TYPE_1__** kmalloc_array (int,int,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int asd_alloc_edbs(struct asd_ha_struct *asd_ha, gfp_t gfp_flags)
{
 struct asd_seq_data *seq = &asd_ha->seq;
 int i;

 seq->edb_arr = kmalloc_array(seq->num_edbs, sizeof(*seq->edb_arr),
         gfp_flags);
 if (!seq->edb_arr)
  return -ENOMEM;

 for (i = 0; i < seq->num_edbs; i++) {
  seq->edb_arr[i] = asd_alloc_coherent(asd_ha, ASD_EDB_SIZE,
           gfp_flags);
  if (!seq->edb_arr[i])
   goto Err_unroll;
  memset(seq->edb_arr[i]->vaddr, 0, ASD_EDB_SIZE);
 }

 ASD_DPRINTK("num_edbs:%d\n", seq->num_edbs);

 return 0;

Err_unroll:
 for (i-- ; i >= 0; i--)
  asd_free_coherent(asd_ha, seq->edb_arr[i]);
 kfree(seq->edb_arr);
 seq->edb_arr = ((void*)0);

 return -ENOMEM;
}
