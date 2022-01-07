
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hw_regs {unsigned int cl_slot_num_mask; int outb_copy_pointer; int outb_read_pointer; } ;
struct mvumi_hba {unsigned int ob_cur_slot; scalar_t__ list_num_io; struct mvumi_hw_regs* regs; } ;


 unsigned int ioread32 (int ) ;

__attribute__((used)) static int mvumi_check_ob_list_9580(struct mvumi_hba *mhba,
   unsigned int *cur_obf, unsigned int *assign_obf_end)
{
 unsigned int ob_write;
 struct mvumi_hw_regs *regs = mhba->regs;

 ob_write = ioread32(regs->outb_read_pointer);
 ob_write = ioread32(regs->outb_copy_pointer);
 *cur_obf = mhba->ob_cur_slot & mhba->regs->cl_slot_num_mask;
 *assign_obf_end = ob_write & mhba->regs->cl_slot_num_mask;
 if (*assign_obf_end < *cur_obf)
  *assign_obf_end += mhba->list_num_io;
 else if (*assign_obf_end == *cur_obf)
  return -1;
 return 0;
}
