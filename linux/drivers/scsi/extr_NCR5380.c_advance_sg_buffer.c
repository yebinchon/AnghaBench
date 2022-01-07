
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct scatterlist* buffer; scalar_t__ this_residual; int ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct scatterlist {scalar_t__ length; } ;


 int sg_is_last (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_virt (struct scatterlist*) ;

__attribute__((used)) static inline void advance_sg_buffer(struct scsi_cmnd *cmd)
{
 struct scatterlist *s = cmd->SCp.buffer;

 if (!cmd->SCp.this_residual && s && !sg_is_last(s)) {
  cmd->SCp.buffer = sg_next(s);
  cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
  cmd->SCp.this_residual = cmd->SCp.buffer->length;
 }
}
