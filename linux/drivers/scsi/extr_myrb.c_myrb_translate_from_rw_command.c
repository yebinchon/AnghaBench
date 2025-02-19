
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union myrb_cmd_mbox {int* bytes; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;



__attribute__((used)) static inline void myrb_translate_from_rw_command(struct myrb_cmdblk *cmd_blk)
{
 union myrb_cmd_mbox *mbox = &cmd_blk->mbox;
 int ldev_num = mbox->bytes[7];

 mbox->bytes[7] = mbox->bytes[3] >> 6;
 mbox->bytes[3] &= 0x7;
 mbox->bytes[3] |= ldev_num << 3;
}
