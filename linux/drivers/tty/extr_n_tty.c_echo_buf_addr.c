
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n_tty_data {unsigned char* echo_buf; } ;


 int N_TTY_BUF_SIZE ;

__attribute__((used)) static inline unsigned char *echo_buf_addr(struct n_tty_data *ldata, size_t i)
{
 return &ldata->echo_buf[i & (N_TTY_BUF_SIZE - 1)];
}
