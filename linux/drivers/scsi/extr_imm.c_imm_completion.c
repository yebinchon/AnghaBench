
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ this_residual; int ptr; TYPE_4__* buffer; int buffers_residual; } ;
struct scsi_cmnd {unsigned char* cmnd; TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_13__ {unsigned short base; scalar_t__ rd; } ;
typedef TYPE_3__ imm_struct ;
struct TYPE_14__ {scalar_t__ length; } ;
struct TYPE_11__ {int host; } ;


 int DID_BUS_BUSY ;
 int DID_ERROR ;
 scalar_t__ IMM_BURST_SIZE ;
 unsigned char READ_10 ;
 unsigned char READ_6 ;
 unsigned char WRITE_10 ;
 unsigned char WRITE_6 ;
 TYPE_3__* imm_dev (int ) ;
 int imm_fail (TYPE_3__*,int ) ;
 int imm_in (TYPE_3__*,int,int) ;
 int imm_out (TYPE_3__*,int,int) ;
 unsigned long jiffies ;
 int r_str (unsigned short) ;
 TYPE_4__* sg_next (TYPE_4__*) ;
 int sg_virt (TYPE_4__*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int w_ctr (unsigned short,int) ;

__attribute__((used)) static int imm_completion(struct scsi_cmnd *cmd)
{





 imm_struct *dev = imm_dev(cmd->device->host);
 unsigned short ppb = dev->base;
 unsigned long start_jiffies = jiffies;

 unsigned char r, v;
 int fast, bulk, status;

 v = cmd->cmnd[0];
 bulk = ((v == READ_6) ||
  (v == READ_10) || (v == WRITE_6) || (v == WRITE_10));





 w_ctr(ppb, 0x0c);
 r = (r_str(ppb) & 0xb8);





 while (r != (unsigned char) 0xb8) {




  if (time_after(jiffies, start_jiffies + 1))
   return 0;






  if (((r & 0x88) != 0x88) || (cmd->SCp.this_residual <= 0)) {
   imm_fail(dev, DID_ERROR);
   return -1;
  }

  if (dev->rd == 0) {
   fast = (bulk
    && (cmd->SCp.this_residual >=
        IMM_BURST_SIZE)) ? IMM_BURST_SIZE : 2;
   status = imm_out(dev, cmd->SCp.ptr, fast);
  } else {
   fast = (bulk
    && (cmd->SCp.this_residual >=
        IMM_BURST_SIZE)) ? IMM_BURST_SIZE : 1;
   status = imm_in(dev, cmd->SCp.ptr, fast);
  }

  cmd->SCp.ptr += fast;
  cmd->SCp.this_residual -= fast;

  if (!status) {
   imm_fail(dev, DID_BUS_BUSY);
   return -1;
  }
  if (cmd->SCp.buffer && !cmd->SCp.this_residual) {

   if (cmd->SCp.buffers_residual--) {
    cmd->SCp.buffer = sg_next(cmd->SCp.buffer);
    cmd->SCp.this_residual =
        cmd->SCp.buffer->length;
    cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);





    if (cmd->SCp.this_residual & 0x01)
     cmd->SCp.this_residual++;
   }
  }

  w_ctr(ppb, 0x0c);
  r = (r_str(ppb) & 0xb8);


  if (!(r & 0x80))
   return 0;
 }
 return 1;
}
