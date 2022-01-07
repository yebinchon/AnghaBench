
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int capabilities; } ;
struct uvesafb_par {TYPE_1__ vbe_ib; } ;
struct TYPE_5__ {int eax; int ebx; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;
struct uvesafb_ktask {TYPE_3__ t; } ;
struct fb_info {struct uvesafb_par* par; } ;


 int EINVAL ;
 int ENOMEM ;



 int VBE_CAP_VGACOMPAT ;
 int uvesafb_exec (struct uvesafb_ktask*) ;
 int uvesafb_free (struct uvesafb_ktask*) ;
 struct uvesafb_ktask* uvesafb_prep () ;
 int vga_rcrt (int *,int) ;
 int vga_rseq (int *,int) ;
 int vga_wcrt (int *,int,int) ;
 int vga_wseq (int *,int,int) ;

__attribute__((used)) static int uvesafb_blank(int blank, struct fb_info *info)
{
 struct uvesafb_ktask *task;
 int err = 1;
 {
  task = uvesafb_prep();
  if (!task)
   return -ENOMEM;

  task->t.regs.eax = 0x4f10;
  switch (blank) {
  case 128:
   task->t.regs.ebx = 0x0001;
   break;
  case 130:
   task->t.regs.ebx = 0x0101;
   break;
  case 129:
   task->t.regs.ebx = 0x0401;
   break;
  default:
   goto out;
  }

  err = uvesafb_exec(task);
  if (err || (task->t.regs.eax & 0xffff) != 0x004f)
   err = 1;
out: uvesafb_free(task);
 }
 return err;
}
