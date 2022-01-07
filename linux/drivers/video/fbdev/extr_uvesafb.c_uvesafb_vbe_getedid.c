
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vbe_version; } ;
struct uvesafb_par {TYPE_1__ vbe_ib; } ;
struct TYPE_6__ {int eax; int ebx; scalar_t__ edx; scalar_t__ ecx; } ;
struct TYPE_7__ {int flags; TYPE_2__ regs; scalar_t__ buf_len; } ;
struct uvesafb_ktask {int buf; TYPE_3__ t; } ;
struct TYPE_8__ {int dclkmax; int gtf; scalar_t__ hfmax; scalar_t__ vfmax; } ;
struct fb_info {TYPE_4__ monspecs; struct uvesafb_par* par; } ;


 scalar_t__ EDID_LENGTH ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TF_BUF_ESDI ;
 int TF_BUF_RET ;
 int fb_edid_to_monspecs (int ,TYPE_4__*) ;
 int kfree (int ) ;
 int kzalloc (scalar_t__,int ) ;
 scalar_t__ noedid ;
 int pr_info (char*) ;
 int uvesafb_exec (struct uvesafb_ktask*) ;

__attribute__((used)) static int uvesafb_vbe_getedid(struct uvesafb_ktask *task, struct fb_info *info)
{
 struct uvesafb_par *par = info->par;
 int err = 0;

 if (noedid || par->vbe_ib.vbe_version < 0x0300)
  return -EINVAL;

 task->t.regs.eax = 0x4f15;
 task->t.regs.ebx = 0;
 task->t.regs.ecx = 0;
 task->t.buf_len = 0;
 task->t.flags = 0;

 err = uvesafb_exec(task);

 if ((task->t.regs.eax & 0xffff) != 0x004f || err)
  return -EINVAL;

 if ((task->t.regs.ebx & 0x3) == 3) {
  pr_info("VBIOS/hardware supports both DDC1 and DDC2 transfers\n");
 } else if ((task->t.regs.ebx & 0x3) == 2) {
  pr_info("VBIOS/hardware supports DDC2 transfers\n");
 } else if ((task->t.regs.ebx & 0x3) == 1) {
  pr_info("VBIOS/hardware supports DDC1 transfers\n");
 } else {
  pr_info("VBIOS/hardware doesn't support DDC transfers\n");
  return -EINVAL;
 }

 task->t.regs.eax = 0x4f15;
 task->t.regs.ebx = 1;
 task->t.regs.ecx = task->t.regs.edx = 0;
 task->t.flags = TF_BUF_RET | TF_BUF_ESDI;
 task->t.buf_len = EDID_LENGTH;
 task->buf = kzalloc(EDID_LENGTH, GFP_KERNEL);
 if (!task->buf)
  return -ENOMEM;

 err = uvesafb_exec(task);

 if ((task->t.regs.eax & 0xffff) == 0x004f && !err) {
  fb_edid_to_monspecs(task->buf, &info->monspecs);

  if (info->monspecs.vfmax && info->monspecs.hfmax) {




   if (info->monspecs.dclkmax == 0)
    info->monspecs.dclkmax = 300 * 1000000;
   info->monspecs.gtf = 1;
  }
 } else {
  err = -EINVAL;
 }

 kfree(task->buf);
 return err;
}
