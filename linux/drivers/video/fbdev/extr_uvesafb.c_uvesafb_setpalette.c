
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvesafb_par {int mode_idx; int vbe_modes_cnt; scalar_t__ pmi_setpal; TYPE_1__* vbe_modes; } ;
struct uvesafb_pal_entry {int red; int green; int blue; } ;
struct TYPE_5__ {int eax; int ebx; int ecx; int edx; } ;
struct TYPE_6__ {int buf_len; TYPE_2__ regs; int flags; } ;
struct uvesafb_ktask {TYPE_3__ t; struct uvesafb_pal_entry* buf; } ;
struct fb_info {struct uvesafb_par* par; } ;
struct TYPE_4__ {int mode_attr; } ;


 int EINVAL ;
 int ENOMEM ;
 int TF_BUF_ESDI ;
 int VBE_MODE_VGACOMPAT ;
 int dac_reg ;
 int dac_val ;
 int outb_p (int,int ) ;
 int uvesafb_exec (struct uvesafb_ktask*) ;
 int uvesafb_free (struct uvesafb_ktask*) ;
 struct uvesafb_ktask* uvesafb_prep () ;

__attribute__((used)) static int uvesafb_setpalette(struct uvesafb_pal_entry *entries, int count,
  int start, struct fb_info *info)
{
 struct uvesafb_ktask *task;




 int err = 0;





 if (start + count > 256)
  return -EINVAL;
 {
  task = uvesafb_prep();
  if (!task)
   return -ENOMEM;

  task->t.regs.eax = 0x4f09;
  task->t.regs.ebx = 0x0;
  task->t.regs.ecx = count;
  task->t.regs.edx = start;
  task->t.flags = TF_BUF_ESDI;
  task->t.buf_len = sizeof(struct uvesafb_pal_entry) * count;
  task->buf = entries;

  err = uvesafb_exec(task);
  if ((task->t.regs.eax & 0xffff) != 0x004f)
   err = 1;

  uvesafb_free(task);
 }
 return err;
}
