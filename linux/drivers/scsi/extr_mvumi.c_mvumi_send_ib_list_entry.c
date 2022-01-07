
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvumi_hba {int ib_cur_slot; TYPE_1__* regs; int ib_shadow; } ;
struct TYPE_2__ {int inb_write_pointer; } ;


 int iowrite32 (int,int ) ;

__attribute__((used)) static void mvumi_send_ib_list_entry(struct mvumi_hba *mhba)
{
 iowrite32(0xffff, mhba->ib_shadow);
 iowrite32(mhba->ib_cur_slot, mhba->regs->inb_write_pointer);
}
