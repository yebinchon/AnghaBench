
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asd_seq_data {int num_escbs; TYPE_1__** escb_arr; } ;
struct asd_ha_struct {struct asd_seq_data seq; } ;
struct TYPE_2__ {int tasklet_complete; } ;


 int ASD_DPRINTK (char*,int) ;
 int asd_post_escb_list (struct asd_ha_struct*,TYPE_1__*,int) ;
 int escb_tasklet_complete ;

int asd_init_post_escbs(struct asd_ha_struct *asd_ha)
{
 struct asd_seq_data *seq = &asd_ha->seq;
 int i;

 for (i = 0; i < seq->num_escbs; i++)
  seq->escb_arr[i]->tasklet_complete = escb_tasklet_complete;

 ASD_DPRINTK("posting %d escbs\n", i);
 return asd_post_escb_list(asd_ha, seq->escb_arr[0], seq->num_escbs);
}
