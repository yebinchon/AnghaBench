
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ read_tail; scalar_t__ canon_head; scalar_t__ commit_head; int icanon; } ;
typedef scalar_t__ ssize_t ;



__attribute__((used)) static ssize_t chars_in_buffer(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;
 ssize_t n = 0;

 if (!ldata->icanon)
  n = ldata->commit_head - ldata->read_tail;
 else
  n = ldata->canon_head - ldata->read_tail;
 return n;
}
