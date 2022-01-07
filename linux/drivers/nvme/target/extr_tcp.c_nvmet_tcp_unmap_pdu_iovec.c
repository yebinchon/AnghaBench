
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_2__ {struct scatterlist* sg; } ;
struct nvmet_tcp_cmd {size_t sg_idx; int nr_mapped; TYPE_1__ req; } ;


 int kunmap (int ) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void nvmet_tcp_unmap_pdu_iovec(struct nvmet_tcp_cmd *cmd)
{
 struct scatterlist *sg;
 int i;

 sg = &cmd->req.sg[cmd->sg_idx];

 for (i = 0; i < cmd->nr_mapped; i++)
  kunmap(sg_page(&sg[i]));
}
