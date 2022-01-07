
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hw_regs {unsigned int cl_slot_num_mask; unsigned int cl_pointer_toggle; int outb_copy_pointer; } ;
struct mvumi_hba {unsigned int ob_cur_slot; scalar_t__ list_num_io; struct mvumi_hw_regs* regs; int ob_shadow; } ;


 unsigned int ioread32 (int ) ;

__attribute__((used)) static int mvumi_check_ob_list_9143(struct mvumi_hba *mhba,
   unsigned int *cur_obf, unsigned int *assign_obf_end)
{
 unsigned int ob_write, ob_write_shadow;
 struct mvumi_hw_regs *regs = mhba->regs;

 do {
  ob_write = ioread32(regs->outb_copy_pointer);
  ob_write_shadow = ioread32(mhba->ob_shadow);
 } while ((ob_write & regs->cl_slot_num_mask) != ob_write_shadow);

 *cur_obf = mhba->ob_cur_slot & mhba->regs->cl_slot_num_mask;
 *assign_obf_end = ob_write & mhba->regs->cl_slot_num_mask;

 if ((ob_write & regs->cl_pointer_toggle) !=
   (mhba->ob_cur_slot & regs->cl_pointer_toggle)) {
  *assign_obf_end += mhba->list_num_io;
 }
 return 0;
}
