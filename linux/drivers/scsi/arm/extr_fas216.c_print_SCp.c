
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_pointer {int buffers_residual; int buffer; int this_residual; int ptr; } ;


 int printk (char*,char const*,int ,int ,int ,int ,char const*) ;

__attribute__((used)) static void print_SCp(struct scsi_pointer *SCp, const char *prefix, const char *suffix)
{
 printk("%sptr %p this_residual 0x%x buffer %p buffers_residual 0x%x%s",
  prefix, SCp->ptr, SCp->this_residual, SCp->buffer,
  SCp->buffers_residual, suffix);
}
