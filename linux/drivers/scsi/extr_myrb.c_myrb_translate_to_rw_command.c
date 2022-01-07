
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ldev_num; } ;
struct TYPE_4__ {TYPE_1__ ld; } ;
union myrb_cmd_mbox {int* bytes; TYPE_2__ type5; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;



__attribute__((used)) static inline void myrb_translate_to_rw_command(struct myrb_cmdblk *cmd_blk)
{
 union myrb_cmd_mbox *mbox = &cmd_blk->mbox;
 int ldev_num = mbox->type5.ld.ldev_num;

 mbox->bytes[3] &= 0x7;
 mbox->bytes[3] |= mbox->bytes[7] << 6;
 mbox->bytes[7] = ldev_num;
}
