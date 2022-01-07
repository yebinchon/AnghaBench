
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_ioarcb_ata_regs {int ctl; int hob_lbah; int hob_lbam; int hob_lbal; int hob_nsect; int hob_feature; int command; int device; int lbah; int lbam; int lbal; int nsect; int feature; } ;
struct ata_taskfile {int ctl; int hob_lbah; int hob_lbam; int hob_lbal; int hob_nsect; int hob_feature; int command; int device; int lbah; int lbam; int lbal; int nsect; int feature; } ;



__attribute__((used)) static void ipr_copy_sata_tf(struct ipr_ioarcb_ata_regs *regs,
        struct ata_taskfile *tf)
{
 regs->feature = tf->feature;
 regs->nsect = tf->nsect;
 regs->lbal = tf->lbal;
 regs->lbam = tf->lbam;
 regs->lbah = tf->lbah;
 regs->device = tf->device;
 regs->command = tf->command;
 regs->hob_feature = tf->hob_feature;
 regs->hob_nsect = tf->hob_nsect;
 regs->hob_lbal = tf->hob_lbal;
 regs->hob_lbam = tf->hob_lbam;
 regs->hob_lbah = tf->hob_lbah;
 regs->ctl = tf->ctl;
}
