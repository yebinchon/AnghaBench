
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {size_t read_head; size_t read_tail; } ;



__attribute__((used)) static inline size_t read_cnt(struct n_tty_data *ldata)
{
 return ldata->read_head - ldata->read_tail;
}
