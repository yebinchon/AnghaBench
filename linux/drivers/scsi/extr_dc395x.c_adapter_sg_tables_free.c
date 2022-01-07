
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct AdapterCtlBlk {TYPE_1__* srb_array; } ;
struct TYPE_2__ {int segment_x; } ;


 int DC395x_MAX_SRB_CNT ;
 unsigned int PAGE_SIZE ;
 unsigned int SEGMENTX_LEN ;
 int kfree (int ) ;

__attribute__((used)) static void adapter_sg_tables_free(struct AdapterCtlBlk *acb)
{
 int i;
 const unsigned srbs_per_page = PAGE_SIZE/SEGMENTX_LEN;

 for (i = 0; i < DC395x_MAX_SRB_CNT; i += srbs_per_page)
  kfree(acb->srb_array[i].segment_x);
}
