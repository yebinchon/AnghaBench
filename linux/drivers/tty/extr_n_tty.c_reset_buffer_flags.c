
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {scalar_t__ push; int read_flags; scalar_t__ erasing; scalar_t__ line_start; scalar_t__ commit_head; scalar_t__ read_tail; scalar_t__ canon_head; scalar_t__ read_head; } ;


 int N_TTY_BUF_SIZE ;
 int bitmap_zero (int ,int ) ;

__attribute__((used)) static void reset_buffer_flags(struct n_tty_data *ldata)
{
 ldata->read_head = ldata->canon_head = ldata->read_tail = 0;
 ldata->commit_head = 0;
 ldata->line_start = 0;

 ldata->erasing = 0;
 bitmap_zero(ldata->read_flags, N_TTY_BUF_SIZE);
 ldata->push = 0;
}
