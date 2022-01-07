
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {int read_head; } ;


 unsigned char* read_buf_addr (struct n_tty_data*,int ) ;

__attribute__((used)) static inline void put_tty_queue(unsigned char c, struct n_tty_data *ldata)
{
 *read_buf_addr(ldata, ldata->read_head) = c;
 ldata->read_head++;
}
