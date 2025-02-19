
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vbe_ib {int dummy; } ;
struct TYPE_6__ {int vbe_version; int oem_vendor_name_ptr; int oem_product_name_ptr; int oem_product_rev_ptr; int oem_string_ptr; int mode_list_ptr; int vbe_signature; } ;
struct uvesafb_par {TYPE_3__ vbe_ib; } ;
struct TYPE_4__ {int eax; } ;
struct TYPE_5__ {int buf_len; TYPE_1__ regs; int flags; } ;
struct uvesafb_ktask {TYPE_3__* buf; TYPE_2__ t; } ;


 int EINVAL ;
 int TF_VBEIB ;
 int pr_cont (char*,...) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int strncpy (int ,char*,int) ;
 int uvesafb_exec (struct uvesafb_ktask*) ;

__attribute__((used)) static int uvesafb_vbe_getinfo(struct uvesafb_ktask *task,
          struct uvesafb_par *par)
{
 int err;

 task->t.regs.eax = 0x4f00;
 task->t.flags = TF_VBEIB;
 task->t.buf_len = sizeof(struct vbe_ib);
 task->buf = &par->vbe_ib;
 strncpy(par->vbe_ib.vbe_signature, "VBE2", 4);

 err = uvesafb_exec(task);
 if (err || (task->t.regs.eax & 0xffff) != 0x004f) {
  pr_err("Getting VBE info block failed (eax=0x%x, err=%d)\n",
         (u32)task->t.regs.eax, err);
  return -EINVAL;
 }

 if (par->vbe_ib.vbe_version < 0x0200) {
  pr_err("Sorry, pre-VBE 2.0 cards are not supported\n");
  return -EINVAL;
 }

 if (!par->vbe_ib.mode_list_ptr) {
  pr_err("Missing mode list!\n");
  return -EINVAL;
 }

 pr_info("");






 if (par->vbe_ib.oem_vendor_name_ptr)
  pr_cont("%s, ",
   ((char *)task->buf) + par->vbe_ib.oem_vendor_name_ptr);

 if (par->vbe_ib.oem_product_name_ptr)
  pr_cont("%s, ",
   ((char *)task->buf) + par->vbe_ib.oem_product_name_ptr);

 if (par->vbe_ib.oem_product_rev_ptr)
  pr_cont("%s, ",
   ((char *)task->buf) + par->vbe_ib.oem_product_rev_ptr);

 if (par->vbe_ib.oem_string_ptr)
  pr_cont("OEM: %s, ",
   ((char *)task->buf) + par->vbe_ib.oem_string_ptr);

 pr_cont("VBE v%d.%d\n",
  (par->vbe_ib.vbe_version & 0xff00) >> 8,
  par->vbe_ib.vbe_version & 0xff);

 return 0;
}
