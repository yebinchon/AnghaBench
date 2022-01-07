
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {size_t canon_head; size_t read_tail; int read_flags; } ;


 scalar_t__ MASK (size_t) ;
 int N_TTY_BUF_SIZE ;
 scalar_t__ __DISABLED_CHAR ;
 scalar_t__ read_buf (struct n_tty_data*,size_t) ;
 scalar_t__ test_bit (size_t,int ) ;

__attribute__((used)) static unsigned long inq_canon(struct n_tty_data *ldata)
{
 size_t nr, head, tail;

 if (ldata->canon_head == ldata->read_tail)
  return 0;
 head = ldata->canon_head;
 tail = ldata->read_tail;
 nr = head - tail;

 while (MASK(head) != MASK(tail)) {
  if (test_bit(tail & (N_TTY_BUF_SIZE - 1), ldata->read_flags) &&
      read_buf(ldata, tail) == __DISABLED_CHAR)
   nr--;
  tail++;
 }
 return nr;
}
